module testbench();

  reg p1_1, p2_1, p3_1, p1_2, p2_2, p3_2, p1_3, p2_3, p3_3,   p4_1, p5_1, p6_1, p4_2, p5_2, p6_2, p4_3, p5_3, p6_3;
  wire led1_1, led1_2, led1_3, led2_1, led2_2, led2_3;
  
  gateLevel_1   G1(p1_1, p2_1, p3_1, led1_1);
  gateLevel_2   G2(p1_2, p2_2, p3_2, led1_2);
  gateLevel_3   G3(p1_3, p2_3, p3_3, led1_3);
  
  operadores_1 OP1(p4_1, p5_1, p6_1, led2_1);
  operadores_2 OP2(p4_2, p5_2, p6_2, led2_2);
  operadores_3 OP3(p4_3, p5_3, p6_3, led2_3);

  initial begin
	$display("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Gate Level Modelling>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	$display("");
	$display("EJERCICIO 5: ECUACION S.O.P.");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", p1_1, p2_1, p3_1, led1_1);
       p1_1 = 0; p2_1 = 0; p3_1 = 0;
    #1 p1_1 = 0; p2_1 = 0; p3_1 = 1;
    #1 p1_1 = 0; p2_1 = 1; p3_1 = 0;
    #1 p1_1 = 0; p2_1 = 1; p3_1 = 1;
    #1 p1_1 = 1; p2_1 = 0; p3_1 = 0;
    #1 p1_1 = 1; p2_1 = 0; p3_1 = 1;
    #1 p1_1 = 1; p2_1 = 1; p3_1 = 0;
    #1 p1_1 = 1; p2_1 = 1; p3_1 = 1;
	#1 $display("");
  end
  
  initial begin
    #10
	$display("EJERCICIO 5: ECUACION P.O.S.");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", p1_2, p2_2, p3_2, led1_2);
       p1_2 = 0; p2_2 = 0; p3_2 = 0;
    #1 p1_2 = 0; p2_2 = 0; p3_2 = 1;
    #1 p1_2 = 0; p2_2 = 1; p3_2 = 0;
    #1 p1_2 = 0; p2_2 = 1; p3_2 = 1;
    #1 p1_2 = 1; p2_2 = 0; p3_2 = 0;
    #1 p1_2 = 1; p2_2 = 0; p3_2 = 1;
    #1 p1_2 = 1; p2_2 = 1; p3_2 = 0;
    #1 p1_2 = 1; p2_2 = 1; p3_2 = 1;
	#1 $display("");
  end
  
  initial begin
    #20
	$display("EJERCICIO 5: ECUACION SOLUCION CON MAPA DE KARNAUGH");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", p1_3, p2_3, p3_3, led1_3);
       p1_3 = 0; p2_3 = 0; p3_3 = 0;
    #1 p1_3 = 0; p2_3 = 0; p3_3 = 1;
    #1 p1_3 = 0; p2_3 = 1; p3_3 = 0;
    #1 p1_3 = 0; p2_3 = 1; p3_3 = 1;
    #1 p1_3 = 1; p2_3 = 0; p3_3 = 0;
    #1 p1_3 = 1; p2_3 = 0; p3_3 = 1;
    #1 p1_3 = 1; p2_3 = 1; p3_3 = 0;
    #1 p1_3 = 1; p2_3 = 1; p3_3 = 1;
	#1 $display("");
  end
  

  initial begin
    #30
	$display("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Behavioral Modelling>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	$display("");
	$display("EJERCICIO 5: ECUACION S.O.P.");
    $display("A B C | Y");
    $display("--------|--");
    $monitor("%b %b %b | %b", p4_1, p5_1, p6_1, led2_1);
       p4_1 = 0; p5_1 = 0; p6_1 = 0;
    #1 p4_1 = 0; p5_1 = 0; p6_1 = 1;
    #1 p4_1 = 0; p5_1 = 1; p6_1 = 0;
    #1 p4_1 = 0; p5_1 = 1; p6_1 = 1;
    #1 p4_1 = 1; p5_1 = 0; p6_1 = 0;
    #1 p4_1 = 1; p5_1 = 0; p6_1 = 1;
    #1 p4_1 = 1; p5_1 = 1; p6_1 = 0;
    #1 p4_1 = 1; p5_1 = 1; p6_1 = 1;
	#1 $display("");
	
  end
  
  initial begin
    #40
	$display("EJERCICIO 5: ECUACION P.O.S.");
    $display("A B C | Y");
    $display("--------|--");
    $monitor("%b %b %b | %b", p4_2, p5_2, p6_2, led2_2);
       p4_2 = 0; p5_2 = 0; p6_2 = 0;
    #1 p4_2 = 0; p5_2 = 0; p6_2 = 1;
    #1 p4_2 = 0; p5_2 = 1; p6_2 = 0;
    #1 p4_2 = 0; p5_2 = 1; p6_2 = 1;
    #1 p4_2 = 1; p5_2 = 0; p6_2 = 0;
    #1 p4_2 = 1; p5_2 = 0; p6_2 = 1;
    #1 p4_2 = 1; p5_2 = 1; p6_2 = 0;
    #1 p4_2 = 1; p5_2 = 1; p6_2 = 1;
	#1 $display("");
	
  end
  
  initial begin
    #50
	$display("EJERCICIO 5: ECUACION SOLUCION CON MAPA DE KARNAUGH");
    $display("A B C | Y");
    $display("--------|--");
    $monitor("%b %b %b | %b", p4_3, p5_3, p6_3, led2_3);
       p4_3 = 0; p5_3 = 0; p6_3 = 0;
    #1 p4_3 = 0; p5_3 = 0; p6_3 = 1;
    #1 p4_3 = 0; p5_3 = 1; p6_3 = 0;
    #1 p4_3 = 0; p5_3 = 1; p6_3 = 1;
    #1 p4_3 = 1; p5_3 = 0; p6_3 = 0;
    #1 p4_3 = 1; p5_3 = 0; p6_3 = 1;
    #1 p4_3 = 1; p5_3 = 1; p6_3 = 0;
    #1 p4_3 = 1; p5_3 = 1; p6_3 = 1;
	#1 $display("");
	
  end
  
 
  initial
    #60	$finish;
  
  initial begin
    $dumpfile("Ejerccio5_tb.vcd");
    $dumpvars(0, testbench);
  end
  
endmodule