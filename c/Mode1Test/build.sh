#!/bin/bash
MAIN=Mode1Test
avr-gcc -std=c99 -g -mmcu=atmega1284p  -Os -c ../common/hwio.c -o hwio.o
avr-gcc -std=c99 -g -mmcu=atmega1284p  -Os $MAIN.c hwio.o -o $MAIN.o
avr-objcopy -j .text -j.data -O ihex $MAIN.o  $MAIN.hex
