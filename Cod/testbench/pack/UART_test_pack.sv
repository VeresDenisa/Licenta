package UART_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import UART_sequence_pack::*;
  
    import UART_environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/UART/test/test/UART_test.svh"
  endpackage : UART_test_pack