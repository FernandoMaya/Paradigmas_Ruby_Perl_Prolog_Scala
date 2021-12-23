# class Almacen
# 	def desc
# 		print "Ingrese el total de su compra: "
# 		compra = gets.to_i
# 		descuento = (compra - (compra * 0.20))
# 		if(compra>= 1000)
# 			puts "El total con descuento es de: ", descuento
# 		else
# 			puts "Su pago es de: ", compra
# 		end
# 	end
# end
# objeto = Almacen.new()
# objeto.desc
# gets()


# # ###############################################################
# $costo1 = 5
# $costo2 = 4
# $costo3 = 3
# $costo4 = 2
# $costo = 0
# $horas = 0
# class Estacionamiento
# 	def tarifas()
# 		puts "Ingrese las horas en el Estacionamiento: "
# 		$horas = gets.to_i
# 		case $horas
# 		when 1..2 
# 			$costo = ($horas*$costo1)
# 			print "Es costo es de: ", $costo
# 		when 3..5
# 			$costo1 = 10
# 			if $horas ==3
# 				$costo2 = (4+$costo1)
# 				puts "El costo es de: ", $costo2
# 			end
# 			if $horas ==4
# 				$costo2 = (8+$costo1)
# 				puts "El costo es de: ", $costo2
# 			end
# 			if $horas ==5
# 				$costo2 = (12+$costo1)
# 				puts "El costo es de: ", $costo2
# 			end

# 		when 6..10
# 			$costo2 = 22
# 			if $horas==6
# 				$costo3 = ($costo2 + 3)
# 				puts "El costo es de: ", $costo3
# 			end
# 			if $horas==7
# 				$costo3 = ($costo2 + 6)
# 				puts "El costo es de: ", $costo3
# 			end
# 			if $horas==8
# 				$costo3 = ($costo2 + 9)
# 				puts "El costo es de: ", $costo3
# 			end
# 			if $horas==9
# 				$costo3 = ($costo2 + 12)
# 				puts "El costo es de: ", $costo3
# 			end
# 			if $horas==10
# 				$costo3 = ($costo2 + 15)
# 				puts "El costo es de: ", $costo3
# 			end
# 		when 10..
# 			if $horas>10
# 				$costo4 = ($horas*2)
# 				puts "El costo es de: ", $costo4				
# 			end
# 		else
# 			print"Error en la variable"
# 		end
# 	end
# end
# auto = Estacionamiento.new()
# auto.tarifas
# gets()


# # ##################################################
# class Empleado
# 	def horasT
# 		puts "Cuantas horas trabajadas a la semana: "
# 		htrabajadas = gets.to_i
# 		if htrabajadas<=40
# 			salario = (htrabajadas*16)
# 			puts "Tu salario semanal es de: ", salario			
# 		end
# 		if htrabajadas>=41
# 			extras = ((htrabajadas - 40)*20)
# 			salario = ((40*16) + extras)
# 			puts "Tu salario semanal es de: ", salario
# 		end
# 	end
# end

# horasS = Empleado.new()
# horasS.horasT
# gets()



class Inter
	def medio
		print"Ingresa el Primer numero \n"
		a=gets.to_i
		print"Ingresa el Segundo numero \n"
		b=gets.to_i
		print"Ingresa el Tercer numero \n"
		c=gets.to_i



		if(a>b && b>c) || (c>b && b>a)
			print b," Es el numero intermedio"
		end
		if (b>a && a>c) || (c>a && a>b)
			print a," Es el numero intermedio"
		end
		if (a>c && c>b) || (b>c && c>a)
			print c," Es el numero intermedio"
		end
	end
end
nums = Inter.new()
nums.medio
gets()
