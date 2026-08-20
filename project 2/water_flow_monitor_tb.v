`timescale 1ns/1ps

module water_flow_monitor_tb;

reg clk;
reg reset;
reg flow_sensor;
wire [15:0] flow_count;

water_flow_monitor uut(
    .clk(clk),
    .reset(reset),
    .flow_sensor(flow_sensor),
    .flow_count(flow_count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    flow_sensor = 0;

    #10 reset = 0;

    // Water pulse 1
    #10 flow_sensor = 1;
    #10 flow_sensor = 0;

    // Water pulse 2
    #20 flow_sensor = 1;
    #10 flow_sensor = 0;

    // Water pulse 3
    #20 flow_sensor = 1;
    #10 flow_sensor = 0;

    // Water pulse 4
    #20 flow_sensor = 1;
    #10 flow_sensor = 0;

    // Water pulse 5
    #20 flow_sensor = 1;
    #10 flow_sensor = 0;

    #50;
    $finish;
end

initial
begin
    $monitor("Time=%0t Reset=%b Flow=%b Count=%d",
             $time, reset, flow_sensor, flow_count);
end

endmodule