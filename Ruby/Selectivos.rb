# ejercicios selectivos ifs anidados
class Ejercicios
	def initialize()
	end
	def ex()
		print("Ingrese el numero final ")
		n = gets.to_i
		x = 1
		while x<=n
			print "[",x,"]"
			x = x+1;
		end
	end
end
objeto = Ejercicios.new()
objeto.ex
gets()

