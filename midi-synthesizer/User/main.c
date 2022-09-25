#include "ch32v30x.h"
#include <rtthread.h>
#include <rthw.h>
#include <math.h>
#include <stdint.h>
#include <stdbool.h>
#include "drivers/pin.h"

// uart1 device
static rt_device_t serial;

// MIDI frequencies in PWM periods
static uint16_t periods[128];

// timer prescaler
const uint16_t prescale = 270;

// currently on channels
static uint8_t channels[16];

// wait for and read next MIDI byte
uint8_t midiWaitAndReceiveByte() {
    uint8_t b;
    while (true) {
        if (rt_device_read(serial, -1, &b, 1) == 1) {
            return b;
        }
    }
}

// play note
void noteOn(uint8_t channel, uint8_t note, uint8_t velocity) {
    // get period for the frequency
    uint16_t period = periods[note];

    // update PWM period and pulse
    TIM1->ATRLR = period;
    TIM1->CH1CVR = period / 2;

    // enable timer for PWM
    TIM_Cmd(TIM1, ENABLE);

    // mark as note-on
    channels[channel]++;

    // turn LED on
    GPIO_ResetBits(GPIOA, GPIO_Pin_0);
}

// stop playing note
void noteOff(uint8_t channel) {
    // mark channel as note-off
    channels[channel]--;

    // turn off, only, if no other channel started meanwhile
    int sum = 0;
    for (int i = 0; i < 16; i++) {
        sum += channels[i];
    }
    if (sum == 0) {
        // stop timer to turn PWM off
        TIM_Cmd(TIM1, DISABLE);

        // turn LED off
        GPIO_SetBits(GPIOA, GPIO_Pin_0);
    }
}

void initHardware() {
    // init PWM for PA8
    GPIO_InitTypeDef GPIO_InitStructure;
    TIM_OCInitTypeDef TIM_OCInitStructure = { 0 };
    TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure = { 0 };
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_TIM1, ENABLE);
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // init timer
    TIM_TimeBaseInitStructure.TIM_Period = 1;
    TIM_TimeBaseInitStructure.TIM_Prescaler = prescale - 1;
    TIM_TimeBaseInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInit(TIM1, &TIM_TimeBaseInitStructure);
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_Pulse = 1;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    TIM_OC1Init(TIM1, &TIM_OCInitStructure);
    TIM_CtrlPWMOutputs(TIM1, ENABLE);
    TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Disable);
    TIM_ARRPreloadConfig(TIM1, ENABLE);

    // init PA0 for LED
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // find and open UART device
    serial = rt_device_find("uart1");
    rt_device_open(serial, RT_DEVICE_FLAG_INT_RX);
}

void main() {
    // open uart device, and init PWM and GPIOs
    initHardware();

    // calculate MIDI pitch table
    const float base = powf(2, 1.0f / 12.0f);
    const float clock = 144000000.0f;
    for (int i = 0; i < 128; i++) {
        float freq = 440.0f * powf(base, i - 69.0f);
        float period = clock / ((float) prescale) / freq;
        periods[i] = period + 0.5f;
    }

    // read MIDI messages from UART and play notes
    while (true) {
        // wait for first MIDI message byte
        uint8_t message;
        uint8_t channel;
        uint8_t note;
        uint8_t velocity;
        while (true) {
            message = midiWaitAndReceiveByte();
            if (message & 0x80) break;
        }
        channel = message & 0xf;

        // get note and velocity
        note = midiWaitAndReceiveByte();
        velocity = midiWaitAndReceiveByte();

        // evaluate message
        switch (message & 0xf0) {
            case 0x80:
            noteOff(channel);
            break;
            case 0x90:
            // some keyboards and MIDI files use velocity 0 with note-on, for note-off
            if (velocity == 0) {
                noteOff(channel);
            } else {
                noteOn(channel, note, velocity);
            }
            break;
        }
    }
}
