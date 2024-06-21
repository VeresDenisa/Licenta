class VGA_input_sequence extends uvm_sequence #(VGA_input_item);
    `uvm_object_utils(VGA_input_sequence)
    
    VGA_input_item item;

    function new (string name = "VGA_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : VGA_input_sequence


task VGA_input_sequence::body();
    item = VGA_input_item::type_id::create("VGA_input_item");

    `uvm_info(get_name(), $sformatf("Create VGA input sequence."), UVM_MEDIUM);

    start_item(item);
    assert(item.randomize());
    `uvm_info(get_name(), $sformatf("Create VGA input item: %s", item.convert2string), UVM_FULL);
    finish_item(item);
endtask : body
