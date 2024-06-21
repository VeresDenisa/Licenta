package CS_coverage_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;

    `include "testbench/DB/test/environment/coverage/DB_covergroup.sv"

    `include "testbench/CM/test/environment/coverage/CM_output_covergroup.sv"

    `include "testbench/UART/test/environment/coverage/UART_covergroup.sv"

    `include "testbench/LM/test/environment/coverage/LM_covergroup.sv"
    
    `include "testbench/VGA/test/environment/coverage/VGA_covergroup.sv"
    
    `include "testbench/DB/test/environment/coverage/DB_coverage.svh"

    `include "testbench/UART/test/environment/coverage/UART_coverage.svh"

    `include "testbench/LM/test/environment/coverage/LM_coverage.svh"

    `include "testbench/VGA/test/environment/coverage/VGA_coverage.svh"

  endpackage : CS_coverage_pack