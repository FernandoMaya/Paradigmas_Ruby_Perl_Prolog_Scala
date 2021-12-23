
def fibonacci( n )
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )

end

#fibonacci(5) = fibonacci(4) + fibonacci(3)
#fibonacci(5) = fibonacci(3) + fibonacci(2) + fibonacci(2) + fibonacci(1)
#fibonacci(5) = fibonacci(2) + fibonacci(1) + fibonacci(1) + fibonacci(0) + fibonacci(1) + fibonacci(0) + fibonacci(1)
#fibonacci(5) = fibonacci(1) + fibonacci(0) + fibonacci(1) + fibonacci(1) + fibonacci(0) + fibonacci(1) + fibonacci(0) + fibonacci(1)

#fibonacci(5) = 5;


puts "Dame el numero maximo de la secuencia a llegar "
n = gets.chomp.to_i
for i in 0..n
  puts fibonacci(i)
end

gets()



def factorial(num)
 if num == 0
  return 1
 else
  num *= factorial(num - 1)
 end
end


def find_num(n, k)
  result = factorial(n) / (factorial(k) * factorial(n - k))
end

def pascale(num)
  i = 0
  scale = 75
  while i <= num
    new_arr = []
    (0..i).map {|x| new_arr << find_num(i, x)}
    p new_arr.to_s.rjust(50 + scale)
    i += 1
    scale += 1
  end


end


puts "Dame la fila a la que quiere llegar: "
n = gets.chomp.to_i;
pascale(n)
gets()