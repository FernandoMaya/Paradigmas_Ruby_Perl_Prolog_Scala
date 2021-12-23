suma = 0

puts "Dame el primer numero"
a = gets.chomp.to_i
puts "Dame el segundo numero"
b = gets.chomp.to_i
puts "Dame el tercer numero"
c = gets.chomp.to_i
puts "Dame el cuarto numero"
d = gets.chomp.to_i
ary = [a,b,c,d]

ary.each_with_index{|val, index| puts "Indice: #{index + 1} => #{val}"}

ary.each {|x| suma+=x}
puts "La suma es= #{suma}"

multiplicacion = ary.inject(:*)
puts "La multiplicacion es = #{multiplicacion}"

division = suma / 2
puts "La division entre dos = #{division}"

cubo = suma**3
puts "La suma al cubo es de = #{cubo}"
