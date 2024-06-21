class UART_valid_sequence extends uvm_sequence #(UART_input_item);
    `uvm_object_utils(UART_valid_sequence)
    
    UART_input_item item;

    function new (string name = "UART_valid_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : UART_valid_sequence


task UART_valid_sequence::body();
    item = UART_input_item::type_id::create("UART_input_item");

    `uvm_info(get_name(), $sformatf("Create UART input sequence."), UVM_MEDIUM);

    for(int i = 0; i < 16; i++) begin
        start_item(item);
        item.in = 1'b0;
        `uvm_info(get_name(), $sformatf("Create UART input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end

    for(int i = 0; i < 16 * 8; i++) begin
        start_item(item);
        item.in = 1'b0;
        `uvm_info(get_name(), $sformatf("Create UART input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end

    for(int i = 0; i < 16; i++) begin
        start_item(item);
        item.in = 1'b1;
        `uvm_info(get_name(), $sformatf("Create UART input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end

    for(int i = 0; i < 16; i++) begin
        start_item(item);
        item.in = 1'b1;
        `uvm_info(get_name(), $sformatf("Create UART input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body