$matriz = [],[]
# Recorrer el 5*5 de la Matriz
for $i in 0..4
    $fila = []
    for $j in 0..4
        if ($i==0 || $i ==4)
            $fila[$j] = 1
        else
            if ($j == 0 || $j == 4)
                $fila[$j] = 1 #Rellenar el contorno de la matriz
            else
                $fila[$j] = 0 #Rellenar el centro
            end
        end
    $matriz[$i] = $fila
    end
end
# Imprimir Matriz
for $i in 0..4
    for $j in 0..4
        print "[ ",$matriz[$i][$j], " ]"
    end
    print "\n"
end