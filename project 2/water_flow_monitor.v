module water_flow_monitor(
    input clk,
    input reset,
    input flow_sensor,
    output reg [15:0] flow_count
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        flow_count <= 16'd0;
    else if(flow_sensor)
        flow_count <= flow_count + 1;
end

endmodule