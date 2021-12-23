def exchange e, list #Para intercambiar los valores
  (0...(list.length-e)).each do |j|
    if list[j] >= list[j+e]
      list[j], list[j+e] = list[j+e], list[j]
    end
  end
end

def shell_sort(list)
  d = list.length
  return -1 if d == 0
  (0...list.length).each do |i| #ciclo para dividir en 2
    d = d / 2
    puts "d:#{d}" #Solo es un indice para laas repeticiones
    exchange(d, list)
    puts list.inspect
    if d == 1
      exchange(d, list)
      break
    end
  end
  list
end

arr = [4,6,2,8,1,3,9,5,7]
p shell_sort(arr)
gets()