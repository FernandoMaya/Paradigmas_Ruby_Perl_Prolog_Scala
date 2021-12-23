def fill_pairs(matriz)
  m = matriz.length
  n = matriz[0].length

  (1..((m * n) / 2)).each do |i|
    filleds = 0

    loop do
      m1 = rand 0...m
      n1 = rand 0...n

      if matriz[m1][n1] == 'X'
        matriz[m1][n1] = "[#{i}]"
        filleds += 1
      end
      break if filleds == 2
    end
  end
  matriz
end

def fill_board(matriz, m, n)
  m.times do
    column = []
    n.times do
      column.push 'X'
    end
    matriz.push column
  end
  matriz
end

def print_matriz(matriz)
  matriz.each do |column|
    column.each do |item|
      print "#{item} "
    end
    puts ''
  end
end

def ended_game(matriz, board)
  # verifica que el tablero de juego sea igual al resultado
  (0...matriz.length).each do |i|
    (0..matriz[i].length).each do |j|
      return false if matriz[i][j] != board[i][j]
    end
  end
  true
end

def play_game(matriz)
  result = fill_board [], matriz.length, matriz.length

  until ended_game(matriz, result)
    puts 'matriz resultado'
    print_matriz matriz
    puts 'matriz tablero actual'
    print_matriz result
    print 'Posición 1 i: '
    p1_i = gets.chomp.to_i

    print 'Posición 1 j: '
    p1_j = gets.chomp.to_i

    result[p1_i][p1_j] = matriz[p1_i][p1_j]
    item = matriz[p1_i][p1_j]

    system 'clear'
    puts 'matriz tablero actual'
    print_matriz result
    print 'Posición 2 i: '
    p2_i = gets.chomp.to_i

    print 'Posición 2 j: '
    p2_j = gets.chomp.to_i

    result[p2_i][p2_j] = matriz[p2_i][p2_j]
    puts 'matriz tablero actual'
    print_matriz result

    # verificando items iguales y de distintas posiciones
    if item != matriz[p2_i][p2_j] || (p1_i == p2_i && p1_j == p2_j)
      result[p1_i][p1_j] = 'X'
      result[p2_i][p2_j] = 'X'
    else
      puts 'Se ha obtenido un acierto'
    end
  end
  
  puts 'Se ha ganado'
end

def main
  board = []

  print 'Dimensión M: '
  tab_m = gets.chomp.to_i

  print 'Dimensión N: '
  tab_n = gets.chomp.to_i

  fill_board board, tab_m, tab_n
  fill_pairs board

  play_game board
end

main