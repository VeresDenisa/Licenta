package CS_environment_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import CS_sequence_pack::*;

    import CS_agent_pack::*;
    import CS_coverage_pack::*;

    `include "testbench/CONF/test/environment/sequencer/CONF_input_virtual_sequencer.svh"
    `include "testbench/CONF/test/environment/sequencer/CONF_output_virtual_sequencer.svh"

    `include "testbench/environment_config.svh"

    `include "testbench/DB/test/environment/DB_environment.svh"

    `include "testbench/LM/test/environment/LM_environment.svh"

    `include "testbench/UART/test/environment/UART_environment.svh"
    
    `include "testbench/VGA/test/environment/VGA_environment.svh"

  endpackage : CS_environment_pack