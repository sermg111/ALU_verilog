`timescale 1 ns / 10 ps
//Directiva que fija la unidad de tiempo de simulación y el paso de simulación
module mux4_1_tb;
//declaracion de señales
reg test_a, test_b; // las señales de entrada al semisumador. Se han declarado reg
// porque queremos inicializarlas
wire test_sum, test_carry; //señales de salida, se declaran como wire porque sus
// valores se fijan por el semisumador
//instancia del modulo a testear, con notación de posiciones de argumentos
ha_v1 ha1(test_sum, test_carry, test_a, test_b);
//
//
ha_v1 ha1(.a(test_a), .b(test_b), .sum(test_sum), .carry(test_carry));
initial
    begin
    // sentencia para mostrar los valores de tiempo y variables, en cuanto cualquiera de
    // éstas cambie
    $monitor("tiempo=%0d a=%b b=%b suma=%b acarreo=%b", $time, test_a, test_b, test_sum, test_carry);
    //vector de test 0
    test_a = 1'b0;
    test_b = 1'b0;
    #20;
    //vector de test 1
    test_a = 1'b0;
    test_b = 1'b1;
    #20;
    //vector
    test_a =
    test_b =
    #20;
    //vector
    test_a =
    test_b =
    $finish;
    de test 2
    1'b1;
    1'b0;
    de test 3
    1'b1;
    1'b1;
    //fin simulacion
    end
endmodule