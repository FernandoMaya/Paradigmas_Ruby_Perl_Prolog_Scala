class Ejercicios
	def ejercicioss
		while $indice !=0
			print " 1.- Ejercicio 1 \n 2.- Ejercicio 2\n 3.- Ejercicio 3\n 4.- Ejercicio 4\n 5.-Ejercicio 4 segunda opción\n 0.- Salir\n"
			$indice = gets.to_i
			case $indice
				when 1
					$fact = 1
					for i in 1..7
						print $i,"!", "="
						for $j in 1..i
							print "[ ", $j, " ]"
							$fact = $fact*$j
						end
						print "= ", $fact
						print"\n"
						$fact = 1
					end
				when 2
					print "Ingrese un numero "
					$f = gets.to_i
					print "Ingrese otro numero "
					$c = gets.to_i
					matriz = [$f],[$c]
					for i in (1..$f)
						for j in (1..$c)
							print "[*]"
						end
						print "\n"
					end
				when 3
					puts "Ingrese un numero"
					x=gets.to_i
					y=x+1
					while x<y
					    array= Array(1..x)
					    print "#{array}\n"
					    x -=1
					    if x==0
					        y=0
					    end
					end
					
				when 4
					$b=1
					puts "Ingrese un numero"
					$x = gets.to_i
					$n = $x-$b
					$y = $x+1

					for i in 1..$n
						for j in 1..i
							array = Array(1..i)
						end
						print "#{array}\n"
					end
						while $x<$y
						    array= Array($b..$x)
						    print "#{array}\n"
						    $x-=1
						    if $x==0
						        $y=0
						    end
						end
				when 5
					b=1
					puts "Ingrese un numero"
					x = gets.to_i
					$a = 1
					y = x+1
						while 0<$a
						    array= Array(1..$a)
						    print "#{array}\n"
						    $a+=1
						    if $a==y
						        $a=$a-2
						        # break
						        while $a>0
						        array= Array(1..$a)
						        print "#{array}\n"
						        $a-=1
						        end
						    end
						end
				end
			end
		end
	end

objeto = Ejercicios.new()
objeto.ejercicioss