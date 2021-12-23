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