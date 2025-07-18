# NRF_LoRa

PCB design for a Nordic nRF52840 (QFN48) with SX1262 LoRa module.  
Designed as a low-power mesh node for experimentation and Meshtastic development.

![Board Top](04_output_assembly/LoRa_Project.jpg)


### Features
- nRF52840 SoC (BLE, Cortex-M4F)
- SX1262 LoRa (868 MHz) with SMA antenna
- USB-C input with TPS2116 power multiplexer
- MCP73831 LiPo charger and MAX17048 fuel gauge
- Optional 0.96" I²C OLED for status output
- FT231XS USB-UART bridge for programming
- Compact 4-layer PCB (50 x 50 mm)

### Repository Structure
- `hardware/` – KiCad source files (schematic, PCB, symbols, footprints)
- `output_pcb/` – Gerbers, fabrication layer PDFs
- `output_assembly/` – BOM, pick-and-place, schematic PDFs

This repo documents the hardware design; firmware will be added once the board is fabricated.

