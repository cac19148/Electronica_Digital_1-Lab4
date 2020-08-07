// EJERCICIO 5: ECUACIÓN S.O.P. - Gate Level Modelling
module gateLevel_1(input wire A_1, B_1, C_1, output wire S1_1);

  wire NB_1, NC_1, P1_1, P2_1, P3_1;

  not (NB_1, B_1);
  not (NC_1, C_1);
  
  and (P1_1, A_1, NB_1, NC_1);
  and (P2_1, A_1, NB_1, C_1);
  and (P3_1, A_1, B_1, C_1);
  
  or  (S1_1, P1_1, P2_1, P3_1);

endmodule

// EJERCICIO 5: ECUACIÓN P.O.S. - Gate Level Modelling
module gateLevel_2(input wire A_2, B_2, C_2, output wire P1_2);
	
  wire NA_2, NB_2, NC_2, S1_2, S2_2, S3_2, S4_2, S5_2;

  not (NA_2, A_2);
  not (NB_2, B_2);
  not (NC_2, C_2);
  
  or (S1_2, A_2, B_2, C_2);
  or (S2_2, A_2, B_2, NC_2);
  or (S3_2, A_2, NB_2, C_2);
  or (S4_2, A_2, NB_2, NC_2);
  or (S5_2, NA_2, NB_2, C_2);
  
  and (P1_2, S1_2, S2_2, S3_2, S4_2, S5_2);

endmodule

// EJERCICIO 5: ECUACIÓN SOLUCIÓN CON MAPA DE KARNAUGH - Gate Level Modelling
module gateLevel_3(input wire A_3, B_3, C_3, output wire S1_3);

  wire NB_3, P1_3, P2_3;

  not (NB_3, B_3);
  
  and (P1_3, A_3, C_3);
  and (P2_3, A_3, NB_3);
  
  or  (S1_3, P1_3, P2_3);

endmodule



// EJERCICIO 5: ECUACIÓN S.O.P. - Behavioral Modelling
module operadores_1(input wire A_1, B_1, C_1, output wire Y_1);

  assign Y_1 = (A_1 & ~B_1 & ~C_1) | (A_1 & ~B_1 & C_1) | (A_1 & B_1 & C_1);
endmodule

// EJERCICIO 5: ECUACIÓN P.O.S. - Behavioral Modelling
module operadores_2(input wire A_2, B_2, C_2, output wire Y_2);

  assign Y_2 = (A_2 | B_2 | C_2) & (A_2 | B_2 | ~C_2) & (A_2 | ~B_2 | C_2) & (A_2 | ~B_2 | ~C_2) & (~A_2 | ~B_2 | C_2);

endmodule

// EJERCICIO 5: ECUACIÓN SOLUCIÓN CON MAPA DE KARNAUGH - Behavioral Modelling
module operadores_3(input wire A_3, B_3, C_3, output wire Y_3);

  assign Y_3 = (A_3 & C_3) | (A_3 & ~B_3);

endmodule

