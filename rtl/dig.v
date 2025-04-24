module dig (
    input wire clk,
    input wire Voutc,
    output logic [7:0] T
);

    logic rst = 0;
    logic [18:0] cycle_reset = 0;

    always_ff @(posedge clk) begin
        if (cycle_reset == 30000) begin
            rst <= 1;
            cycle_reset <= 0;
        end else begin
            rst <= 0;
            cycle_reset <= cycle_reset + 1;
        end
    end

    always_ff @(posedge clk) begin
        if (rst)
            T <= 0;
        else if (Voutc)
            T <= T + 1;
    end

endmodule
