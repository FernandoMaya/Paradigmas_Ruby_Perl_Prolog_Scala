class MayorMenor
	def numeros
		print "Ingrese un numero: "
		a = gets.to_i
		print "Ingrese un segundo numero: "
		b = gets.to_i
		c = a+b
		print "La suma de los numeros es: ", c , "\n"
		print"      "

		if(a>b)
			print a," es mayor que ",b
		else
			print b, " es mayor que ", a
		end
	end
end

num = MayorMenor.new()
num.numeros
gets()

