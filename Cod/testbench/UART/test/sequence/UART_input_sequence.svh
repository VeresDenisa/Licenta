class UART_input_sequence extends uvm_sequence #(UART_input_item);
    `uvm_object_utils(UART_input_sequence)
    
    UART_input_item item;

    function new (string name = "UART_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : UART_input_sequence


task UART_input_sequence::body();
    item = UART_input_item::type_id::create("UART_input_item");

    `uvm_info(get_name(), $sformatf("Create UART input sequence."), UVM_MEDIUM);

    start_item(item);
    assert(item.randomize());
    `uvm_info(get_name(), $sformatf("Create UART input item: %s", item.convert2string), UVM_FULL);
    finish_item(item);
endtask : body
