#! /usr/bin/perl
use Switch;
$var = 999;
while($var != 0){
   print "Seleccione el programa\n--1\n--2\n--3\n--4\n--0 - Salir\n";
	$var = <>;
if($var==1){
$fact=1;
for($i = 7; $i >= 1; $i--){
   print $i."!"."=";
   for($k = $i; $k >= 1; $k--){
     print $k."*";
     $fact=$fact*$k;
  }  
  print"=".$fact;
 print "\n"; 
$fact=1;
}
}
if($var==2){
    print "Ingresa las filas\n";
    $m= <>;
    print "Ingresa las columnas\n";
    $n= <>;
    print "Ingresa Caracter\n";
    $c= <>;
    print "---------------------\n";
    for($i = 1; $i <= $m; $i++)
    {
       for($k = 1; $k <= $n; $k++){
          print "".$c."";
       }
       print "\n";
 }      
}
if($var==3){
   $long1 = 0;
   print "Ingresa el tamano de la piramide\n";
   $long1= <>;
   for($i = ($long1+1); $i >= 1; $i--){
      for($k = 1; $k < $i; $k++){
        print "$k ";
     }  
    print "\n"; 
 }
}
if($var==4){
   $long1 = 0;
   print "Ingresa el tamano de la piramide\n";
   $long1= <>;
   for($i = 1; $i <=$long1; $i++){
      for($k = 1; $k < $i; $k++){
        print "$k ";
     }  
    print "\n"; 
   }
   for($i = ($long1+1); $i >= 1; $i--){
      for($k = 1; $k < $i; $k++){
        print "$k ";
     }  
    print "\n"; 
   }
}
}