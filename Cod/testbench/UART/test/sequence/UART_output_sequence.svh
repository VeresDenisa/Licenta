class UART_output_sequence extends uvm_sequence #(UART_output_item);
    `uvm_object_utils(UART_output_sequence)
    
    UART_output_item item;

    function new (string name = "UART_output_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : UART_output_sequence


task UART_output_sequence::body();
    item = UART_output_item::type_id::create("UART_output_item");

    `uvm_info(get_name(), $sformatf("Create UART output sequence."), UVM_MEDIUM);

    start_item(item);
    assert(item.randomize());
    `uvm_info(get_name(), $sformatf("Create UART output item: %s", item.convert2string), UVM_FULL);
    finish_item(item);
endtask : body
