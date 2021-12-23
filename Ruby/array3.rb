arr1 = []
arr2 =[]
sumas= []
multiplicacion = []

puts "Dame el numero de elementos:"
numero_elementos = gets.chomp.to_i
puts "Vamos a ingresar los elementos del primer array"
for i in 0..numero_elementos - 1
  puts "Dame el numero "
  numero = gets.chomp.to_i
  arr1[i] = numero
end
puts "Vamos a ingresar los datos del segundo array"
for i in 0..numero_elementos - 1
  puts "Dame el numero "
  numero = gets.chomp.to_i
  arr2[i] = numero
end

for i in 0..numero_elementos - 1
  numero = arr1[i] + arr2[i]
  sumas[i] = numero
end

for i in 0..numero_elementos - 1
  numero = arr1[i] * arr2[i]
  multiplicacion[i] = numero
end
puts "Las sumas son: "
puts sumas
puts "Las multiplicaciones son:"
puts multiplicacion
