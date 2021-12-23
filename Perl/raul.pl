#!/bin/user/perl

print "Jób \n";

$num1 = 10;

$num2 = 20;

print "Ingrese el primer numero. ";
$num1 = <>;
print "Ingrese el segundo numero. ";
$num2 = <>;

$resultado = $num1 + $num2;
print "El resultado de la suma es ", $resultado, "\n";

if($resultado<=100){
	print"Es menor a 100 \n";
}