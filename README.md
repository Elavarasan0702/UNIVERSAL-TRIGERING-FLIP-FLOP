# UNIVERSAL-TRIGGERING-FLIP-FLOP
This repository presents the design of universal triggering flip flop as mixed signal circuit. The integrator circuit is designed  as analog part. D flip flop and 4X1 multiplexer is used as digital part.

## Table of Contents
- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Verilog Code](#verilog-code)
- [Observations](#observations)
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

## Abstract
The circuitry presented here support universal triggering which means that it can be used as both level trigger and edge trigger(postive and negative edge trigger).The main clock pulse is passed through the integrator to detect the edges then it is converted to digital pulse.Finally,we get pulse with reduced duty cycle near to the both edges.a In order to obtain level triggering, main clock pulse is directly connected to multiplexer.By choosing multiplexer select line ,we can select the type of triggering.In this presentation,we show the D flip flop's output while all type of triggering scenarios.

## Reference Circuit Diagram
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/ref_diagram/ref_cir.jpeg)

## Reference Waveform
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/ref_diagram/ref_wave.jpeg)

## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

## Circuit Diagram in eSim
The following is the schematic in eSim:
![image](## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

## Circuit Diagram in eSim
The following is the schematic in eSim:
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/circuit.png)

## Verilog Code
### Counter

```

### MULTIPLEXER
module elavarasanp002_mux(a,b,c,d,s0,s1,out);
input wire a,b,c,d;
input wire s0,s1;
assign out=s1 ?(s0?d:c):(s0?b;a);
endmodule

###D FLIP FLOP
module elavarasanp002_dff(Q,Qbar,D,Clk,Reset);
output reg Q;
output reg Qbar;
input D,Clk,Reset;
assign Qbar = ~Q;
assign Q=Clk ? D:Q;
endmodule

```
## Observations
## INPUT PULSE
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/din.JPG)

## INTEGRATOR OUTPUT
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/ref_diagram/integrate.JPG)

## INPUT PULSE OUTPUT
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/ref_diagram/pulse_in.JPG)

## LEVEL TRIGGERING OUTPUT
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/ref_diagram/level_out.JPG)

## POSTIVE TRIGGERING OUTPUT
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/pos_edge_out.JPG)

## NEGATIVE TRIGGERING OUTPUT
![image](https://github.com/Elavarasan0702/UNIVERSAL-TRIGERING-FLIP-FLOP/blob/main/ref_diagram/neg_edge%20out.JPG)





## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully

## Steps to run this project
1. Open a new terminal
2. Clone this project using the following command:</br>
```git clone https://github.com/PatelVatsalB21/Mixed_Signal_Frequency_Divider.git ```</br>
3. Change directory:</br>
```cd frequency_divider```</br>
4. Run ngspice:</br>
```ngspice Frequency_Divider.cir.out```</br>
5. To run the project in eSim:

  - Run eSim</br>
  - Load the project</br>
  - Open eeSchema</br>

## Acknowlegdements
- FOSSEE, IIT Bombay
- Steve Hoover, Founder, Redwood EDA
- Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
- Sumanto Kar, eSim Team, FOSSEE

## References
[1] V. Sikarwar, N. Yadav and S. Akashe, "Design and analysis of CMOS ring oscillator using 45 nm technology," 2013 3rd IEEE International Advance Computing Conference (IACC), Ghaziabad, 2013, pp. 1491- 1495.

[2] Sani M. Ismail, Saadmaan Rahman, Mohammed M. Rahman and Neelanjana S. Ferdous
???A Design Scheme of Toggle Operation Based Johnson Counter with Efficient Clock Gating???, 2012 Fourth International Conference on Computational Intelligence, Modelling and Simulation 
 

