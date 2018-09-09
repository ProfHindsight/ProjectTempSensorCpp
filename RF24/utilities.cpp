/*
 * utilities.cpp
 *
 *  Created on: Jul 12, 2018
 *      Author: Colton
 */

#include "em_usart.h"
#include "ustimer.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdarg.h>
#include "RF24.h"
#include "em_cmu.h"
#include "em_leuart.h"
#include "em_gpio.h"

HardwareSPI _SPI;

volatile uint32_t msTicks;

#if defined ( CUSTOM_BOARD )
RF24 radio(gpioPortA, 0, gpioPortB, 8);
#else
RF24 radio(gpioPortD, 4, gpioPortD, 3);
#endif
const uint32_t gateway_address 	= {		0xdf569390};
const uint32_t default_node_address = {	0xac04b1a4};

void prepareRF24(void)
{
	radio.setChannel(1);
	radio.setPALevel(RF24_PA_MAX);
	radio.setDataRate(RF24_1MBPS);
	radio.setAutoAck(1);                     // Ensure autoACK is enabled
	radio.setRetries(1,1);                  // Optionally, increase the delay between retries & # of retries
	radio.setAddressWidth(4);
	radio.setCRCLength(RF24_CRC_8);          // Use 8-bit CRC for performance
	radio.stopListening();
	radio.openWritingPipe(gateway_address);
	radio.openReadingPipe(1,default_node_address);

	println("Started Listening!");
	radio.startListening();                 // Start listening
	radio.printDetails();                   // Dump the configuration of the rf unit for debugging
}
void prepare_uart(void)
{
#if defined (DEBUG)
	LEUART_Init_TypeDef init = LEUART_INIT_DEFAULT;
	init.baudrate = 115200;
	init.enable = leuartEnable;
	LEUART_Init(LEUART0, &init);
#endif
}
void prepareClocks(void)
{
	// Enable common clocks
		CMU_ClockSelectSet(cmuClock_HF, cmuSelect_HFRCO);
		CMU_ClockEnable(cmuClock_HFPER, true);
		CMU_ClockEnable(cmuClock_CORELE, true);
		CMU_ClockSelectSet(cmuClock_LFB, cmuSelect_CORELEDIV2);
		CMU_ClockEnable(cmuClock_LEUART0, true);
		CMU_ClockEnable(cmuClock_GPIO, true);
		// Start the ms ticks counter
			if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000))
			  while(1);
}
#if defined(HARDWARE_VERSION_1_0)
void prepareGPIO(void)
{

// Pins connected to ground
	GPIO_PinOutClear(gpioPortB, 13);
	GPIO_PinOutClear(gpioPortB, 14);
	GPIO_PinOutClear(gpioPortC, 15);
	GPIO_PinOutClear(gpioPortE, 12);
	GPIO_PinOutClear(gpioPortE, 13);
	GPIO_PinModeSet(gpioPortB, 13, gpioModePushPull, 0);
	GPIO_PinModeSet(gpioPortB, 14, gpioModePushPull, 0);
	GPIO_PinModeSet(gpioPortC, 15, gpioModePushPull, 0);
	GPIO_PinModeSet(gpioPortE, 12, gpioModePushPull, 0);
	GPIO_PinModeSet(gpioPortE, 13, gpioModePushPull, 0);
	// Configure LEUART pins
	GPIO->P[5].MODEL = (GPIO->P[5].MODEL & ~_GPIO_P_MODEL_MODE0_MASK)
		| GPIO_P_MODEL_MODE0_PUSHPULL;
	GPIO->P[5].MODEL = (GPIO->P[5].MODEL & ~_GPIO_P_MODEL_MODE1_MASK)
		| GPIO_P_MODEL_MODE1_INPUT;
	LEUART0->ROUTE = (LEUART0->ROUTE & ~_LEUART_ROUTE_LOCATION_MASK)
		| LEUART_ROUTE_LOCATION_LOC3;
	LEUART0->ROUTE |= LEUART_ROUTE_RXPEN | LEUART_ROUTE_TXPEN;
	// Pins connected to ground
	GPIO_PinOutClear(gpioPortB, 13);
	GPIO_PinOutClear(gpioPortC, 15);
	GPIO_PinOutClear(gpioPortE, 12);
	GPIO_PinOutClear(gpioPortE, 13);
	GPIO_PinModeSet(gpioPortB, 13, gpioModePushPull, 0);
	GPIO_PinModeSet(gpioPortB, 14, gpioModeInput, 0);
	GPIO_PinModeSet(gpioPortC, 15, gpioModePushPull, 0);
	GPIO_PinModeSet(gpioPortE, 12, gpioModePushPull, 0);
	GPIO_PinModeSet(gpioPortE, 13, gpioModePushPull, 0);
	// Configure LEUART pins
	GPIO->P[5].MODEL = (GPIO->P[5].MODEL & ~_GPIO_P_MODEL_MODE0_MASK)
		| GPIO_P_MODEL_MODE0_PUSHPULL;
	GPIO->P[5].MODEL = (GPIO->P[5].MODEL & ~_GPIO_P_MODEL_MODE1_MASK)
		| GPIO_P_MODEL_MODE1_INPUT;
	LEUART0->ROUTE = (LEUART0->ROUTE & ~_LEUART_ROUTE_LOCATION_MASK)
		| LEUART_ROUTE_LOCATION_LOC3;
	LEUART0->ROUTE |= LEUART_ROUTE_RXPEN | LEUART_ROUTE_TXPEN;
#else
	// Configure LEUART pins
	GPIO->P[5].MODEL = (GPIO->P[5].MODEL & ~_GPIO_P_MODEL_MODE0_MASK)
		| GPIO_P_MODEL_MODE0_PUSHPULL;
	GPIO->P[5].MODEL = (GPIO->P[5].MODEL & ~_GPIO_P_MODEL_MODE1_MASK)
		| GPIO_P_MODEL_MODE1_INPUT;
	LEUART0->ROUTE = (LEUART0->ROUTE & ~_LEUART_ROUTE_LOCATION_MASK)
		| LEUART_ROUTE_LOCATION_LOC3;
	LEUART0->ROUTE |= LEUART_ROUTE_RXPEN | LEUART_ROUTE_TXPEN;
#endif
}

void delayMicroseconds(uint32_t microseconds)
{
	USTIMER_DelayIntSafe(microseconds);
}

uint8_t min(uint8_t a, uint8_t b)
{
	if(a < b) return a;
	else return b;
}


uint32_t millis(void)
{
	return msTicks;
}

void SysTick_Handler(void)
{
	msTicks++;
}

void delay(uint32_t milliseconds)
{
	uint32_t start = msTicks;
	while ((msTicks - start) < milliseconds);
}

void send_string(char * string)
{
      while (*string != 0)
      {
            if (*string == '\n')
            {
                  LEUART_Tx(LEUART0, '\r');
            }
            LEUART_Tx(LEUART0, *string++);
      }
}


void print(const char* format, ...)
{
#ifdef DEBUG

    char       msg[130];
    va_list    args;

    va_start(args, format);
    vsnprintf(msg, sizeof(msg), format, args); // do check return value
    va_end(args);

    send_string(msg);

#endif
}

void println(const char* format, ...)
{
#ifdef DEBUG

    char       msg[130];
    va_list    args;

    va_start(args, format);
    vsnprintf(msg, sizeof(msg), format, args); // do check return value
    va_end(args);

    send_string(msg);

    char terminator[5] =  "\n\r";
    send_string(terminator);

#endif
}

void print(unsigned long int input)
{
#ifdef DEBUG
	print("%i", input);
#endif
}

void println(unsigned long int input)
{
#ifdef DEBUG
	println("%i", input);
#endif
}

uint8_t uart_rx(void)
{
	return LEUART_Rx(LEUART0);
}

bool uart_available(void)
{
	return ((LEUART_StatusGet(LEUART0) & LEUART_STATUS_RXDATAV));
}

uint8_t hex_to_decimal(uint8_t input)
{
	int i = 0;
	char str[] = "0123456789abcdef";
	while(input != str[i]) i++;
	return i;
}

void prepare_sleep(void)
{
	print("Going to sleep\n");
	radio.powerDown();
#if defined(DEBUG)
	//Wait for the LEUART to clear out
	while(USART_StatusGet(UART0) & (1 << 3));
	delay(2);
#endif
}

void prepare_wakeup(void)
{
	radio.powerUpNoWait();
}

bool transmit_packet(void* buf, uint8_t len)
{
	while(!radio.isPowerUpReady());
	radio.stopListening();
	bool success =  radio.write(buf, len);
	radio.startListening();
	return success;
}

bool receive_packet(void* buf, uint8_t len)
{
	while(!radio.isPowerUpReady());
	uint32_t startTicks = msTicks;
	while((msTicks - startTicks) < 500)
	{
		if(radio.available())
		{
			radio.read(buf, len);
			return true;
		}
	}
	return false;
}

void reconfigure_radio(provision_packet* input)
{
	radio.stopListening();
	radio.openReadingPipe(1, input->address);
	radio.startListening();
}
