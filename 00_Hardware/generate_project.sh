#!/bin/bash

# Set project name (change to match your .kicad_pcb base)
PROJECT="LoRa_Project"
HW_DIR="00 - Hardware"
PCB_FILE="$HW_DIR/$PROJECT.kicad_pcb"
SCH_FILE="$HW_DIR/$PROJECT.kicad_sch"

# Output directories
PCB_OUT="03 - Output_PCB"
ASM_OUT="04 - Output_Assembly"
DOCS_OUT="01 - Docs"

mkdir -p "$PCB_OUT" "$ASM_OUT" "$DOCS_OUT"

# 1. Generate Gerbers and drill files
kicad-cli pcb export gerbers "$PCB_FILE" --output "$PCB_OUT"
kicad-cli pcb export drills "$PCB_FILE" --output "$PCB_OUT"

# 2. Export PDFs of PCB layers
kicad-cli pcb export pdf "$PCB_FILE" -o "$PCB_OUT/${PROJECT}_PCB_layers.pdf"

# 3. Export schematic PDF
kicad-cli sch export pdf "$SCH_FILE" -o "$DOCS_OUT/${PROJECT}_schematic.pdf"

# 4. Export BOM (CSV)
kicad-cli sch export bom "$SCH_FILE" -o "$ASM_OUT/${PROJECT}_BOM.csv"

# 5. Export pick-and-place (CPL)
kicad-cli pcb export pos "$PCB_FILE" -o "$ASM_OUT/${PROJECT}_CPL.csv"

echo "All outputs generated and sorted!"
