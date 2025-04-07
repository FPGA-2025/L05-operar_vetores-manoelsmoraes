module operar_vetores( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] saida_or_bit_a_bit,
    output saida_or_logico,
    output [5:0] saida_not
);
	//insira seu código aqui

assign saida_or_bit_a_bit = a | b;              // OR bit a bit
    assign saida_or_logico = (a != 3'b000) || (b != 3'b000);  // OR lógico
    assign saida_not = ~{b, a};                     // NOT sobre vetor concatenado	
	
endmodule
