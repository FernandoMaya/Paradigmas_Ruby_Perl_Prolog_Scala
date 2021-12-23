class Arreglo
	def Initialize()
	end
	def Operaciones
			$n = 4
			$arreglo = []
			$n.times do
				print "Ingrese un numero: "
				$arreglo <<gets.chomp.to_i
			end
			print $arreglo
	end
end
objeto = Arreglo.new()
objeto.Operaciones
gets()