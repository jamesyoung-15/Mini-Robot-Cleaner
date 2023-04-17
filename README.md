# ELEC3300 Project
Ongoing project for a robot car cleaner.

## Done so far:
- Got LCD Display working with LVGL, also used DMA to improve performance of touch screen
- Created simple touch screen menu with LVGL library
- Got ESP8266 working and able to host TCP server with AT commands sent from STM32 through UART
- Created static website that can send directions to control direction of robot car through HTTP GET headers

## To do: 
- Add UART receive and transmit DMA  for ESP8266 for performance
- Work with group to combine parts
- Potentially add camera, send camera stream to web server