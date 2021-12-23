#! /usr/bin/perl

use List::Util qw(max);
use List::MoreUtils qw(first_index);

$var = 999;
while($var != 0){
   print "\nSeleccione el programa\n--1\n--2\n--3\n--4\n--0 - Salir\n";
   $var = <>;

   if($var==1){
	do{
		print "Introduce filas ";
		chomp($fila=<>);
		if($fila<=10 && $fila>=0){
		$sig=1;
		}
		else{print"\nError. Ingresa un valor valido.\n";$sig=0;}
		}while($sig==0);
	do{
		print "Introduce columnas ";
		chomp($col=<>);
		if($col<=10 && $col>=0){
		$sig=1;
		}
		else{print"\nError. Ingresa un valor valido.\n";$sig=0;}
		}while($sig==0);
	@array;
	for($i = 0; $i < $fila; $i++) {
		for($k = 0; $k < $col; $k++) {	
		print "Ingresa elemento ",$i+1," ",$k+1,"\n";
		chomp($array{$i}{$k}=<>);
		}
	}
	print "\nImpresion\n\n";
	for($i = 0; $i < $fila; $i++) {
		print "|";
		for($k = 0; $k < $col; $k++) {	
		print $array{$i}{$k},"|";
		}
		print "\n";
	}
	print "\nSuma Elementos fila\n\n";
	for($i = 0; $i < $fila; $i++) {
		$x=0;
		print "|";
		for($k = 0; $k < $col; $k++) {	
		$x+=$array{$i}{$k};
		print $array{$i}{$k},"|";
		}
		print " La suma: ",$x,"\n";
	}
	print "\nElemento menor Fila\n\n";
	for($i = 0; $i < $fila; $i++) {
		print "|";
		$menorfila = 20000;
		for($k = 0; $k < $col; $k++) {	
		if($menorfila>$array{$i}{$k})
		{
			$menorfila = $array{$i}{$k};
		}
		
		print $array{$i}{$k},"|";
		}
		print " El elemneto menor es: ",$menorfila,"\n";
	}
   }
   if($var==2){
       #====================================================================================
	#Ejercicio2
	#Hacer un algoritmo que rellene una matriz (pedir los valores al usuario) de 3x3 
	#con numeros enteros y hacer que se despliegue en pantalla la matriz creada,
	#busque la diagonal y la supla con ceros.
	#=========================================================================

	$matriz[3][3];

	#Llenamos la matriz
	print "\n-->[ Matriz 3 x 3 ]<--\n";
	for ($i = 0; $i < 3; $i++){
		for ($j = 0; $j < 3; $j++){
			print "Ingrese el valor [".$i."][".$j."]:";
			chomp($matriz[$i][$j] = <STDIN>);
		}
	}

	#Imprimimos la matriz
	print "\nMatriz:";
	for ($i = 0; $i < 3; $i++){
		print "\n	";
		for ($j = 0; $j < 3; $j++){
			print "[".$matriz[$i][$j]."]";
		}
	}

	#Suplimos por ceros la diagonal
	print"\n\nNueva matriz:";
	for ($i = 0; $i < 3; $i++){
		print "\n	";
		for ($j = 0; $j < 3; $j++){
			if ($i == $j){
				$matriz[$i][$j] = 0;
			}
			#imprimimos la matriz nuevamente	
			print "[".$matriz[$i][$j]."]";	
			}	
		}
	print "\n\n\n";
   }
   
   
   if($var==3){
	$matriz[5][5];
	print"	3. Matriz 5 x 5.\n";
	print"	3.1 Delimitar con 1's la tabla\n\n";
	for($i=0;$i<5;$i++){
	print"		";
	for($j=0;$j<5;$j++){
		if($i==0||$i==4||$j==0||$j==4){
			print"  1";
		}
		else{
			print"  0";
		}
	};
	print "\n";
};
   }
   if($var==4){
     #! /usr/bin/perl
	use List::Util qw(min);
	use List::MoreUtils qw(first_index);
	do{
		print "Introduce filas ";
		chomp($fila=<>);
		if($fila<=6 && $fila>=0){
		$sig=1;
		}
		else{print"\nError. Ingresa un valor valido.\n";$sig=0;}
		}while($sig==0);
	do{
		print "Introduce columnas ";
		chomp($col=<>);
		if($col<=5 && $col>=0){
		$sig=1;
		}
		else{print"\nError. Ingresa un valor valido.\n";$sig=0;}
		}while($sig==0);
	@array;
	for($i = 0; $i < $fila; $i++) {
		for($k = 0; $k < $col; $k++) {
		print "Ingresa elemento ",$i+1," ",$k+1,"\n";
		chomp($array{$i}{$k}=<>);
		}
	}
	print "\nImpresion\n\n";
	for($i = 0; $i < $fila; $i++) {
		print "|";
		for($k = 0; $k < $col; $k++) {
		print $array{$i}{$k},"|";
		}
		print "\n";
	}
	print "\nValidar Positivos, Negativos y Ceros\n\n";
	$ceros = 0;
	$pos = 0;
	$neg = 0;
	for($i = 0; $i < $fila; $i++) {
		for($k = 0; $k < $col; $k++) {
		if($array{$i}{$k} == 0 ){
		$ceros = $ceros + 1;
		}else{
	if($array{$i}{$k} > 0 ){
	$pos = $pos + 1;
	}else{
	$neg = $neg + 1;
	}
	}
	}
	}
	print "\nHay " , $ceros , " Ceros en la matriz.\n";
	print "\nHay " , $pos , " Numeros positivos en la matriz.\n";
	print "\nHay " , $neg , "  Numeros Negativos en la matriz.\n";
	}
}
