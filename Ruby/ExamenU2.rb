#!/usr/local/bin/ruby -w
class Ejercicios
	def ejercicioss
		while $indice !=0
			print " 1.- Ejercicio 9 \n 2.- Ejercicio 10\n 3.- Ejercicio 11\n 0.- Salir\n"
			$indice = gets.to_i
			case $indice
				when 1 then
					# EJERCICIO 9
					require 'matrix'

					puts "Dame los valores por fila"
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
					y = x.diagonal?
					puts x
					puts y
# <------------------------------------------------------------------------------->
				when 2 then
					# EJERCICIO 10
					$suma = 0
					$calificaciones = Array.new(25,0)

					for i in (0..$calificaciones.length)
						$calificaciones[i] = rand(5..10)
					end
					print $calificaciones

					$calificaciones.each do |calificacion|
						$suma+= calificacion.to_i
					end
					prom = $suma/$calificaciones.length
					
					print "\n El promedio del grupo es : ", prom.to_f,"\n"
					$superior = 0
					for i in (0..$calificaciones.length)
						if ($calificaciones[i].to_i > prom)
							$superior+=1
						end
					end
					print $superior," superaron el promedio \n"
				when 3 then
					$matriz = [
						[1,2,3,4,5,6,7,8],
						[32,-4,6,2,5,6,9,10],
						[0,3,2,32,324,32,23,23],
						[34,32,234,543,1,3,2,5],
						[2,6,4,3,6,2,6,3],
						[1,4,2,5,3,5,3,6]
					]
					$negativo = 0
					for $i in 0..5
						for $j in 0..7
        					if $matriz[$i][$j] < 0
					            $negativo = $matriz[$i][$j]
					            print "\nEl numero ",$negativo," esta en la posicion ", "[",$i,"]","[",$j,"]\n"
					            print $matriz, "\n"
					        end
						end
					end
			end
		end
	end
end
objeto = Ejercicios.new()
objeto.ejercicioss