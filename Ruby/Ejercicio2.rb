class Matriz
	def operacion
		$filas = 3
		$columnas = 3
		matriz = [],[]
		$filas.times do
			columna = []
		  $columnas.times do
		    print "Ingresa un numero: "
		    $a = gets.chomp.to_i
		    columna.push $a #Push sirve para agregar un dato al arreglo
		  end
		  matriz.push columna
		end
		# imprimir matriz
		matriz.each do |columna|
		  columna.each do |fila|
		    print '[ ',fila,' ]'
		    
		  end
		  puts " " # salto de linea
		end
		matriz.diagonal(0,0,0)
	end
end
tablero = Matriz.new()
tablero.operacion
gets()