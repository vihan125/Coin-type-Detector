# Coin-type-Detector

## Task and assumptions

Coin type detector of a vending machine that accepts three types of coins as the payment. Rs. 1, Rs. 2 and Rs. 5 are the three types of coins. Three light sensors are used in combination to detect the type of the coin. Figure below shows how the light sensors (DX, DY and DZ) are positioned to identify the coins when the coins are rolling down the channel of the vending machine.   

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/task.PNG width="50%" height="50%">
</p>

Sensors get blocked by the height of the coin,
* Case 1: Rs 1 coin - Only DZ sensor get blocked.
* Case 2: Rs 2 coin - Both DZ and DY sensors gets blocked.
* Case 3: Rs 3 coin – All DX, DY and DZ sensors gets blocked.  

The timing diagram for the signals X, Y and Z generated from the three detectors DX, DY and 
DZ are given in Figure below. The example timing diagram is **the output when Rs. 1, Rs. 5 and 
Rs. 2 coins are respectively fed into the machine in that order**.  

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/clock.PNG width="50%" height="50%">
</p>

In this implementation clock with 5ns per clock cycle was considered. (2.5 ns low and 2.5 ns 
high) In addition, the detectors are arranged in such a way that,  
* Rising edge of Z is at least one clock cycle before Y.
* Rising edge of Y is at least one clock cycle before X.  
By using the above conditions made the following assumptions,  
* That coins will not block multiple sensors at the same time and the gap between blocking 
sensors is at least one clock cycle. 
* The time that a coin will block the sensor is not certain, coin can block the sensors for
one or more clock cycles.   
When a coin is detected, one of the three outputs goes high shortly after the falling edge of Z for 
one clock period. Based on this condition following assumption was made,
* There is at least 2 clock cycle gap between two consecutive insertions of coins. 
Otherwise wrong indications can occur as shown in following timing diagram / table.  

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/error.PNG width="50%" height="50%">
</p>  

As show in the above timing diagram if there is not at least a two clock cycle gap between 
two insertions of coins, when a coin is in the channel it will indicate the type of coin that was
inserted previously which will lead to a misunderstanding about the type of coin inserted. 
Other assumptions:  
* Assumed that Y sensor cannot be high before Z sensor getting high and X sensor cannot 
get high before Y sensor gets high. If X sensor is high both Y and Z sensors are also high. 
Therefore, input signals like ‘101’or ‘010’ cannot appear in the state machine. Patterns 
like these are of “Don’t care” state.   

## Timing Diagram

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/timing.PNG width="50%" height="50%">
</p> 

* Note that according to the assumption “The time that a coin will block the sensor is not 
certain, coin can block the sensors for one or more clock cycles” timing diagram has 
indicated different scenarios where coins can block only for one clock cycle or more than 
one clock cycle

## Finite State Machine (Moore)

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/state_diagram.PNG width="50%" height="50%">
</p> 

### State transition table

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/state_table.PNG width="50%" height="50%">
</p> 

x: Assumed that these states cannot occur in the given scenario, therefore they are “don’t care” 
states.

### State transitions using One-hot encoding

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/state_table_onehot.PNG width="50%" height="50%">
</p>

* Present states are represented by the bit sequence: 𝑦6𝑦5𝑦4𝑦3𝑦2𝑦1𝑦0
* Next states are represented by the bit sequence: 𝑑6𝑑5𝑑4𝑑3𝑑2𝑑1𝑑0

### Excitation expressions for next state bits

When deriving expression for the bits, sum of products approach was considered. In one-hot 
encoding approach all other combinations of the present state bits other than the bit with value 
“1” (high) is considered as “don’t care” states. Therefore, expressions derived for the next state 
bits are as follows,  

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/equations.PNG width="50%" height="50%">
</p>

## VHDL Implementation

Two implementations were done using two seperate approches,
*  “FSM_CoinDetector” project is the implementation of the finite state machine using 
one-hot encoding and D – flip-flops. 
*  “coin_detector_FSM” is the implementation of finite state machine using one-hot 
encoding by just assigning state encodings to the states. States are defined by a vector 
signal and the value of the signal is changed according to the clock, X, Y, Z inputs.

### Output from the behavioural simulation

imulation file was created to simulate the timing diagram shown in the Table 2

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/simulation.PNG width="50%" height="50%">
</p>

### Elaborated Design schematic

* Elaborated design schematic for one-hot encoding using D – flip-flops

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/schematic.PNG width="50%" height="50%">
</p>

* Elaborated design schematic for one-hot encoding without using D – flip-flops

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/schem2.PNG width="50%" height="50%">
</p>

### Resource Utilization

* Resource utilization for one-hot encoding using D – flip-flops (Basys3 board)

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/uti-flip.PNG width="50%" height="50%">
</p>

* Resource utilization for one-hot encoding without using D – flip-flops (Basys3 board)

<p align="center">
  <image src = https://github.com/vihan125/Coin-type-Detector/blob/main/Readme%20Images/uti.PNG width="50%" height="50%">
</p>