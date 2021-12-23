#!/bin/user/perl
use Memoize;
$n;
memoize 'pascal';
sub pascal {
      $a=shift;
      $b=shift;
      if($b==0||$a==$b){
         return 1;
      }else{
         return &pascal($a-1,$b-1) + &pascal($a-1,$b);
      }
}
print"Numero de filas del triangulo de Pascal: \n";
$n =<>;
$matriz[$n][$n];

for($i=0;$i<$n;$i++){
   for($j=0;$j<=$i;$j++){
      $matriz[$i][$j]=&pascal($i,$j);
   } 
}
for($i=0;$i<$n;$i++){
   for($k=($n-1)-$i;$k>0;$k--){
      print"   ";
   }
   for($j=0;$j<=$i;$j++){
      print"[".$matriz[$i][$j]."]   ";
   }
   print"\n";
}

memoize 'fib';
sub fib {
   my $x = shift;
   if($x<2){
      return $x;
   }else{
      return fib($x-1) + fib($x-2);      
   }
}
$posFib;
print"Ingresa la cantidad de elementos de la serie de fibonacci: \n";
$posFib=<>;

for($i=0;$i<$posFib;$i++){
      print " || ".&fib($i);
}
