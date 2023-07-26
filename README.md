# Rapid Silicon Physical Chip Design
## SKY130 D1 
### SK1
#### L1
SoC: System on Chip, all components of microprocessor system contained on single chip
Core: Contains all digital logic cells
Die: Size of architechture
Pads: Connect core to IO pins
Foundry: Manufacturer of chip
IP: Intellectual Property
Macro: Digital blocks
#### L2
RISC: Reduced Instruction Set Architechture
Assembly Language with direct mapping to Binary Signals
#### L3
Compiler to Assembler
Input of compiler: Code in High/Low level Programming Language 
Assembler outputs binary instructions
Design Process:
- Instruction Set Architecture
- HDL
- RTL Netlist Synthesis
- Physical design implementation

### SK2
#### L1
ASIC: Application Specific IC
EDA: Electronic Design Automation
PDK: Process Design Kit (interface)
##### L2
ASIC Design Flow
![image](https://github.com/mkhaliq12/RS_ChipDesign/assets/139871694/26a2718e-81e3-46fa-b4e8-d24c218bd79e)
1. Input RTL
2. Synthesis: RTL to Circuit made of components from SCL(Standard Cell Library)
3. Floor and Power Planning: Partition between system blocks, place IO pads, dimensions, pin locations, rows definition, power grid
4. Placement: Cells placed on floorplan in rows, global and detailed
5. CTS: Clock Tree Synthesis, delivering clock to all sequential elements
6. Routing: Interconnect components using metal layers
7. Signoff:
  - DRC: Design Rule Check
  - LVS: Layout vs Schematic
  - STA: Static Timing Analysis
#### L3
OpenLane Introduction
Producing GDSII without Human Intervention 
#### L4
![image](https://github.com/mkhaliq12/RS_ChipDesign/assets/139871694/1329c531-eed1-4261-9f44-2d67a973db16)

### SK3
#### L1
Learnt how to navigate through files using linux terminal
![image](https://github.com/mkhaliq12/RS_ChipDesign/assets/139871694/29ad7d93-bb83-4a6c-9a94-d8dd2dcc5f0f)

#### L2
config.tcl have changed to config.json
What the video said:
![image](https://github.com/mkhaliq12/RS_ChipDesign/assets/139871694/0f9c20a1-cd67-47e1-a156-aeea535d7c6e)

What was in the actual folder:

![image](https://github.com/mkhaliq12/RS_ChipDesign/assets/139871694/de2fbefd-0d25-4fa3-8f47-fa7376c9b093)

#### L3
merged.lef files split into .nom, .max and .min.
config.tcl contains all configurations made.
cmds.log contains all commands used.
Ran Synthesis:
![image](https://github.com/mkhaliq12/RS_ChipDesign/assets/139871694/fdad0772-e8b6-45e6-ba53-c8201698feae)


#### L4
Explains GitHub and how to use ./flow.tcl.
Repeated flow diagram from SK2 L4

#### L5
Synthesis results in file synthesis.AREA_0.stat.rpt

![image](https://github.com/mkhaliq12/RS_ChipDesign/assets/139871694/5148f62a-c9af-46f9-b3d3-c267f5a2116e)

Flop Ratio = 1,596/10,104 = 0.158
Timing reports shown in video were not found the directory.



