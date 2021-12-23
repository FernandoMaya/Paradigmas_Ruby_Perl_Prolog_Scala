#! /usr/bin/perl

use List::Util qw(max);
use List::MoreUtils qw(first_index);

$var = 999;
while($var != 0){
   print "\nSeleccione el programa\n--1\n--2\n--3\n--4\n--0 - Salir\n";
   $var = <>;

   if($var==1){
      $n = 4;
      $suma = 0;
      $multi = 1;
      $elev = 1;
      $divi = 1;
      @arrayNum[$n];
      print "\nINgresa los valores del arreglo:\n";
      for($i = 0; $i <4; $i++){
         print "posicion ".$i." :";
         $arrayNum[$i] = <STDIN>;
      }
      for($i = 0; $i <4; $i++){
         print "posicion ".$i." :";
         print "$arrayNum[$i]";
      }
      for($i = 0; $i <4; $i++){
         $suma = $suma + $arrayNum[$i];
         $multi = $multi * $arrayNum[$i];
      }
      $elev = $suma * $suma * $suma;
      $divi = $suma/2;
      print "suma= " .$suma."\n";
      print "multiplicación= " .$multi."\n";
      print "división entre dos de la suma= " .$divi."\n";
      print "elevación a 3= " .$elev."\n";
   }
   if($var==2){
           
      $numAlumn=0;
      $alumnos[$numAlumn][4];
      $sig=0;

      print"Ingrese numero de estudiantes\n";
      $numAlumn = <STDIN>;

      for($i=0;$i<$numAlumn;$i++){
              print"\nIngrese Datos del estudiante ",($i+1);
              print"\n	Nombre\n";
              chomp($alumnos[$i][0]= <STDIN>);
              
              #Ingresa año de nacimiento
              do{
                      print"	Anio de Nacimiento. (XXXX)\n";
                      chomp($alumnos[$i][3]= <STDIN>);
                      if($alumnos[$i][3]>1920 && $alumnos[$i][3]<2020){
                              $sig=1;
                      }
                      else{print"\nError. Ingresa un ANIO valido.\n";$sig=0;}
              }while($sig==0);
              
              #calcula la edad
              chomp($alumnos[$i][1]= 2020 - $alumnos[$i][3]);
              
              #Ingresa expediente
              do{
                      print"	Expediente. (XXXX)\n";
                      chomp($alumnos[$i][2]= <STDIN>);
                      if($alumnos[$i][2]>0 && $alumnos[$i][2]<10000){
                              $sig=1;
                      }
                      else{print"\nError. Ingresa un EXPEDIENTE valido.\n"; $sig=0;}
              }while($sig==0);	
      }

      print"\n	Datos de alumnos\n";
      print "NOMBRE	EDAD	EXPEDIENTE\n";
      for($i=0;$i<$numAlumn;$i++){
              for($j=0;$j<3;$j++){
                      print $alumnos[$i][$j]."    ";
              }
              print"\n";
      }
   }
   if($var==3){
      #====================================================================
      #Ejercicio 3
      #Se requieree un algoritmo para obtener un vector (C) y (D)
      #que contenga la suma y multiplicación de otros 2 vectores (A) y (B).
      #====================================================================

      print "Ingrese N: ";
      $n = <>;

      @arrayA[$n];
      @arrayB[$n];
      @arrayC[$n];
      @arrayD[$n];

      print "\nIngresa los valores del vector A:\n";
      for($i = 0; $i < $n; $i++){
          print "Posicion ".$i." : ";
          chomp($arrayA[$i] = <STDIN>);
      }

      print "\nIngresa los valores del vector B\n";
      for($i = 0; $i < $n; $i++){
          print "Posicion ".$i." : ";
          chomp($arrayB[$i] = <STDIN>);
      }

      print "\n|   A   |   B   |   C   |   D   |\n";
      for($i = 0; $i < $n; $i++){
          $arrayC[$i] = $arrayA[$i] + $arrayB[$i];
          $arrayD[$i] = $arrayA[$i] * $arrayB[$i]; 
          print "|   $arrayA[$i]   |   $arrayB[$i]   |   $arrayC[$i]   |   $arrayD[$i]   |\n";
      }
      print "\n";
      
      #======================================================================
   }
   if($var==4){
      
      $val = 999;
      $matrix;
      while($val != 0){
         print "Seleccione un Numero\nPara Introducir Datos--1\nPara Mostrar Resultados--2\nSalir--0\n";
         $val = <>;
      if($val==1){
              for ($i = 0; $i <= 4; $i++){
                      
                      $n=1;
                      print "Introduce Nombre Del Chofer No.",$n+$i,"\n";
                      chomp($matrix{$i}{0}=<>);
                      print "Introduce Horas de  Los Lunes Del Chofer No.",$n+$i,"\n";
                      chomp($matrix{$i}{1}=<>);
                      print "Introduce Horas de  Los Martes Del Chofer No.",$n+$i,"\n";
                      chomp($matrix{$i}{2}=<>);
                      print "Introduce Horas de  Los Miercoles Del Chofer No.",$n+$i,"\n";
                      chomp($matrix{$i}{3}=<>);
                      print "Introduce Horas de  Los Jueves Del Chofer No.",$n+$i,"\n";
                      chomp($matrix{$i}{4}=<>);
                      print "Introduce Horas de  Los Viernes Del Chofer No.",$n+$i,"\n";
                      chomp($matrix{$i}{5}=<>);
                      print "Introduce Horas de  Los Sabado Del Chofer No.",$n+$i,"\n";
                      chomp($matrix{$i}{6}=<>);					
              }	
      }
      if($val==2){
              for($row = 0; $row < 5; $row++) {
                      $x=0;
                      for($col = 1; $col < 7; $col++) {	

                      $x+=$matrix{$row}{$col};
                      }
                      print "$matrix{$row}{0}---",$x;
                      print "\n";
              }
              print "Introduce el salario por hora\n";
              chomp($a=<>);
              print "Sueldo Semanal Trabajador\n";
              for($row = 0; $row < 5; $row++) {
                      $x=0;
                      for($col = 1; $col < 7; $col++) {	

                      $x+=$matrix{$row}{$col};
                      }
                      $t=$x*$a;
                      $t2+=$t;
                      print "$matrix{$row}{0}---",$t;
                      print "\n";
                      
              }
              print "Total a pagar ",$t2,"\n";
              
              $p = ($matrix{0}{1},$matrix{1}{1},$matrix{2}{1},$matrix{3}{1},$matrix{4}{1},$matrix{5}{1});
              $num= max($p);
              $num2 = first_index { $_ eq $num } $matrix;
              
              print "Mas horas los Lunes ",$matrix{$num2}{0},"\n";
              print "----Nombre----L----M----MI----J----V----S----\n";
              for($row = 0; $row < 5; $row++) {
                      for($col = 0; $col < 6; $col++) {	
                      print "--",$matrix{$row}{$col},"--";
                      }
                      print "\n--";
              }
      }
      }
      print $matrix{$row}{0},"--";
   }
}