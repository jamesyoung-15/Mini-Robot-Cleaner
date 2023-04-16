# ELEC3300 Project
Ongoing project for a mini-vacuum robot car.

## Done so far:
- Got LCD Display working with LVGL, also used DMA to improve performance of touch screen
- Got ESP8266 working and able to host TCP server with AT commands sent from STM32 through UART
- Created static website that can send directions to control direction of robot car through HTTP POST headers

## To do: 
- Add UART receive and transmit DMA  for ESP8266 for performance
- Potentially add camera
- Work with group to combine parts