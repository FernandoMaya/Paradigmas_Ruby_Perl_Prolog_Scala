$matriz = [],[]
$positivos = 0
 $ceros = 0 
 $negativos = 0
 for $i in 0..4 
 	$fila = [] 
 	for $j in 0..5
 	 print "ingresa el numero de la coordenada ",$i,",",$j," : "
 	  $fila[$j] = gets.to_i 
 	  if $fila[$j] == 0 
 	  	$ceros = $ceros + 1
 	  end 
 	  if $fila[$j] > 0
 	   $positivos = $positivos + 1
 	  end 
 	  # if $fila[$j] < 0
 	  # 	$negativos = $negativos + 1
 	  # end
 	end 
 	$matriz[$i] = $fila
end 
print "de la matriz \n" 
for $i in 0..4
 for $j in 0..5 
 	print "[ ",$matriz[$i][$j], " ]" 
 end 
 print "\n" 
end 
print $ceros, " son 0\n", $positivos, " son positivos \n"
# print $negativos, " son negativos\n"