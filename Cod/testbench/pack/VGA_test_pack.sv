package VGA_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import VGA_sequence_pack::*;
  
    import VGA_environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/VGA/test/test/VGA_test.svh"
  endpackage : VGA_test_pack