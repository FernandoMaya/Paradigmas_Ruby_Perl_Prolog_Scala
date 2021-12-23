def selection_sort(array)
  n = array.length - 1
  n.times do |i|
    min_index = i #Min_Index es 
    for j in (i + 1)..n
      min_index = j if array[j] < array[min_index]
    end
    array[i], array[min_index] = array[min_index], array[i] if min_index != i
  end
  array
end

arr = [4,6,2,8,1,3,9,5,7]
p arr
p selection_sort(arr)

gets()