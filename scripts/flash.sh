#!/bin/sh
set -e
./build.py
openocd -f interface/stlink-v2.cfg -f target/stm32f1x.cfg -c "program build/STM32.hex verify reset exit "
