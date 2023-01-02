module muxtest;
  
  reg a, b, s;
  wire y;
  
  mux21 DUT (a, b, s, y);
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    a = 0;
    b = 0; 
    s = 0;
    #5;
    $display("| a = %0d | b = %0d | s = %0d | y = %0d |", a, b, s, y);
    repeat(10) begin
      a = $random;
      b = $random;
      s = $random;
      #5;
      $display("| a = %0d | b = %0d | s = %0d | y = %0d |", a, b, s, y);
    end
  end
    
endmodule
    