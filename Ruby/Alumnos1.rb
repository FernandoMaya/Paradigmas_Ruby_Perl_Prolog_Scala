# EJERCICIO 1


print 'Numero de columnas '
$columnas = gets.chomp.to_i
print 'Ingresa el numero de filas '
$filas = gets.chomp.to_i
matriz = [],[]

# llenar matriz
for i in (0..$filas-1)
  columna = []
  for j in (0..$columnas-1)
    print "Ingresa un numero: "
    $a = gets.chomp.to_i
    columna.push $a #Push sirve para agregar un dato al arreglo
  end
  matriz.push columna
end

# imprimir matriz
matriz.each do |d|
  d.each do |g|
    print '[ ',g,' ]'
    
  end
  puts " " # salto de linea
end
def suma(x)
  sumaF = 0
  for i in (0..x.size-1)
    for j in (0..x[i].size-1)
      sumaF+= x[i][j]
    end
    puts "La suma de la fila i:#{i} es: #{sumaF}"
    sumaF = 0
  end
end
suma(matriz)

# EJERCICIO 2

require 'matrix'


puts "Ingresaremos datos de la matriz"
puts "Dame los valores por FILA"


puts "Dame los valores "
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
f = gets.chomp.to_i
g = gets.chomp.to_i
h = gets.chomp.to_i
i = gets.chomp.to_i

x = Matrix[[a,b,c],[d,e,f],[g,h,i]]
y = Matrix.diagonal(a,e,i)
a = Matrix.combine(x, y) {|a, b| a - b} # => Matrix[[5, 4], [1, 0]]


puts a

# EJERCICIO 3

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

# EJERCICIO 4


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
        if $fila[$j] < 0
            $negativos = $negativos + 1
        end
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
print $ceros, " son 0\n"
print $positivos, " son positivos\n"
print $negativos, " son negativos"


print "  "
a =gets.to_i