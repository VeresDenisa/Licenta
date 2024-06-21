import item_pack::*;

interface UART_input_VIF(input bit clk);
    logic in;

    clocking driver@(posedge clk);
        output in;
    endclocking

    clocking monitor@(posedge clk);
        input in;
    endclocking

    task send(UART_input_item t);
        @(driver);
        driver.in <= t.in;
    endtask : send

    function automatic void receive(ref UART_input_item t);
        t.in = monitor.in;
    endfunction
endinterface : UART_input_VIF