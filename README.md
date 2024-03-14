A Universal shift register is a register which has both the right shift and left shift with parallel load capabilities. 

Universal shift registers are used as memory elements in computers. A Unidirectional shift register is capable of shifting in only one direction. 

A bidirectional shift register is capable of shifting in both the directions. The Universal shift register is a combination design of bidirectional shift register and a unidirectional shift register with parallel load provision.
n-bit universal shift register – A n-bit universal shift register consists of n flip-flops and n 4×1 multiplexers. 

All the n multiplexers share the same select lines(S1 and S0)to select the mode in which the shift register operates. 

The select inputs select the suitable input for the flip-flops.

**Block Diagram of Basic Universal Shift Register is shown below**
![Screenshot (67)](https://github.com/Shanmukha190602/Sequential_RTLDay9/assets/118514275/d5fbcff4-971b-48b9-8158-92cdb772abc3)



**RTL Schematic Diagram is shown below**

![Screenshot (69)](https://github.com/Shanmukha190602/Sequential_RTLDay9/assets/118514275/6af115fa-b5e9-4f01-8749-f211a8df4068)

**Output is shown below**

![Screenshot (70)](https://github.com/Shanmukha190602/Sequential_RTLDay9/assets/118514275/b21d06ef-9430-401d-b7d2-012f02dcab88)
