// EJERCICIO #1: TABLA 1
module gateLevel_1(input wire A_1, B_1, C_1, output wire S1_1);

  wire NA_1, NB_1, NC_1, P1_1, P2_1, P3_1;

  not (NA_1, A_1);
  not (NB_1, B_1);
  not (NC_1, C_1);
  
  and (P1_1, NA_1, NC_1);
  and (P2_1, A_1, C_1);
  and (P3_1, A_1, NB_1);
  
  or  (S1_1, P1_1, P2_1, P3_1);

endmodule

// EJERCICIO #1: TABLA 2
module gateLevel_2(input wire A_2, B_2, C_2, output wire NB_2);

  not (NB_2, B_2);

endmodule

// EJERCICIO #2: TABLA 2
module gateLevel_3(input wire A_3, B_3, C_3, output wire S1_3);

  wire NB_3, NC_3;

  not (NB_3, B_3);
  
  or  (S1_3, NB_3, C_3);

endmodule

// EJERCICIO #2: TABLA 4
module gateLevel_4(input wire A_4, B_4, C_4, output wire S1_4);

  wire NA_4, NC_4, P1_4;

  not (NA_4, A_4);
  not (NC_4, C_4);
  
  and (P1_4, NA_4, NC_4);
  
  or  (S1_4, P1_4, B_4);

endmodule

// EJERCICIO #1: TABLA 3
module operadores_1(input wire A_1, B_1, C_1, D_1, output wire Y_1);

  assign Y_1 = (~A_1 & ~B_1 & ~C_1 & ~D_1) | (~A_1 & ~B_1 & C_1 & D_1) | (~A_1 & B_1 & ~C_1 & D_1) |(~A_1 & B_1 & C_1 & ~D_1) |(A_1 & B_1 & ~C_1 & ~D_1) |(A_1 & B_1 & C_1 & D_1) |(A_1 & ~B_1 & ~C_1 & D_1) |(A_1 & ~B_1 & C_1 & ~D_1);

endmodule

// EJERCICIO #1: TABLA 4
module operadores_2(input wire A_2, B_2, C_2, D_2, output wire Y_2);

  assign Y_2 = (B_2 & D_2) | (A_2 & ~D_2) | (A_2 & C_2);

endmodule

// EJERCICIO #2: TABLA 1
module operadores_3(input wire A_3, B_3, C_3, D_3, output wire Y_3);

  assign Y_3 = (A_3 & ~C_3) | (~B_3 & ~C_3 & ~D_3) | (A_3 & ~B_3) |(A_3 & C_3 & ~D_3);

endmodule

// EJERCICIO #2: TABLA 3
module operadores_4(input wire A_4, B_4, C_4, D_4, output wire Y_4);

  assign Y_4 = (~ B_4 & ~C_4 & D_4) | (A_4 & D_4) | (B_4);

endmodule