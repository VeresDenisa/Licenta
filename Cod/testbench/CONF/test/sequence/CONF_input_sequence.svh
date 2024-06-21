class CONF_input_sequence extends uvm_sequence #(CONF_item);
    `uvm_object_utils(CONF_input_sequence)
    
    CONF_item item;
    
    function new (string name = "CONF_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : CONF_input_sequence



task CONF_input_sequence::body();
    item = CONF_item::type_id::create("CONF_item");

    `uvm_info(get_name(), $sformatf("Create an input item."), UVM_HIGH);

    start_item(item);
    assert(item.randomize());
    `uvm_info(get_name(), $sformatf("Create CONF input item: %s", item.convert2string), UVM_FULL);
    finish_item(item);
    
    for(int i = 0; i < 10; i++) begin
        start_item(item);
        item.setDefault();
        `uvm_info(get_name(), $sformatf("Create CONF input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body
