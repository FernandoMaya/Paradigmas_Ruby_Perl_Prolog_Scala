$matriz = [],[]
$positivos = 0
$ceros = 0
$negativos = 0
for $i in 0..2
    $fila = []
    for $j in 0..2
        print "ingresa el numero de la coordenada ",$i,",",$j," : "
        $fila[$j] = gets.to_i
    end
    $matriz[$i] = $fila
end

print "de la matriz \n"

for $i in 0..2
    for $j in 0..2
        print "[ ",$matriz[$i][$j], " ]"
    end
    print "\n"
end
puts $matriz.diagonal?


