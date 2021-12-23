def shell_sort(list)
  d = list.length
  return -1 if d == 0
  (0...list.length).each do |i|
    d = d / 2
    puts "d:#{d}"
    (0...(list.length-d)).each do |j|
      if list[j] >= list[j+d]
         list[j], list[j+d] = list[j+d], list[j]
      end
    end
    puts list.inspect
    break if d == 1
  end
  list
end

puts shell_sort([10,9,8,7,6,5,4,3,2,1]).inspect