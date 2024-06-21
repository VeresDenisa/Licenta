class CM_input_sequence extends uvm_sequence #(CM_input_item);
    `uvm_object_utils(CM_input_sequence)
    
    CM_input_item item;

    function new (string name = "CM_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : CM_input_sequence


task CM_input_sequence::body();
    item = CM_input_item::type_id::create("CM_input_item");

    `uvm_info(get_name(), $sformatf("Create CM input sequence."), UVM_MEDIUM);

    start_item(item);
    assert(item.randomize());
    `uvm_info(get_name(), $sformatf("Create CM input item: %s", item.convert2string), UVM_FULL);
    finish_item(item);
endtask : body
