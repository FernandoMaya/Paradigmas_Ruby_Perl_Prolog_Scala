class Alumnos
	def initialize()
	end
	def estudiante
		puts "Ingrese la cantidad de alumnos"
		$n = gets.to_i
		alumnos = []
		$n.times do
			print "Edad "
			alumnos << gets.chomp
			print "Nombre "
			alumnos << gets.chomp
			print "Expediente no mayor a 4 digitos "
			alumnos << gets.chomp
			print "Año de nacimiento "
			alumnos << gets.chomp
			print "\n"
		end
		print alumnos
		
	end
end
alumno = Alumnos.new()
alumno.estudiante
gets()