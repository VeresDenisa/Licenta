class CONF_input_virtual_sequence extends uvm_sequence;
    `uvm_object_utils(CONF_input_virtual_sequence);
    `uvm_declare_p_sequencer(CONF_input_virtual_sequencer);
    
    CONF_input_sequence CONF_seq;  
    CONF_item            item;

    function new (string name = "CONF_input_virtual_sequence");
        super.new(name);
    endfunction : new
        
    extern task pre_body();
    extern task body();  
endclass : CONF_input_virtual_sequence


    
task CONF_input_virtual_sequence::pre_body();
    CONF_seq = CONF_input_sequence::type_id::create("CONF_input_sequence");
    item     = CONF_item           ::type_id::create("CONF_item");
endtask : pre_body
    
task CONF_input_virtual_sequence::body();
    fork
        forever begin
            p_sequencer.CONF_seqr.fifo.get(item);
            if(item.c_ready != 1'b0) begin
                CONF_seq.start(p_sequencer.CONF_seqr);
            end
        end
    join_none
endtask : body
