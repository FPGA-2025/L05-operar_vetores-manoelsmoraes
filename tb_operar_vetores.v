`timescale 1ns / 1ps

module tb_operar_vetores;

  reg [2:0] a, b;
  wire [2:0] saida_or_bit_a_bit;
  wire saida_or_logico;
  wire [5:0] saida_not;

  // Instancia o módulo a ser testado
  operar_vetores uut (
    .a(a),
    .b(b),
    .saida_or_bit_a_bit(saida_or_bit_a_bit),
    .saida_or_logico(saida_or_logico),
    .saida_not(saida_not)
  );

  initial begin
    // Exibe cabeçalho
    $display("a    b    | or_bit | or_logico | not");
    $display("----------------------------------------");

    // Teste 1
    a = 3'b000; b = 3'b000;
    #1 $display("%b  %b  |   %b   |     %b     | %b", a, b, saida_or_bit_a_bit, saida_or_logico, saida_not);

    // Teste 2
    a = 3'b000; b = 3'b001;
    #1 $display("%b  %b  |   %b   |     %b     | %b", a, b, saida_or_bit_a_bit, saida_or_logico, saida_not);

    // Teste 3
    a = 3'b011; b = 3'b010;
    #1 $display("%b  %b  |   %b   |     %b     | %b", a, b, saida_or_bit_a_bit, saida_or_logico, saida_not);

    // Teste 4
    a = 3'b101; b = 3'b011;
    #1 $display("%b  %b  |   %b   |     %b     | %b", a, b, saida_or_bit_a_bit, saida_or_logico, saida_not);

    // Teste 5
    a = 3'b111; b = 3'b100;
    #1 $display("%b  %b  |   %b   |     %b     | %b", a, b, saida_or_bit_a_bit, saida_or_logico, saida_not);

    $finish;
  end

endmodule
