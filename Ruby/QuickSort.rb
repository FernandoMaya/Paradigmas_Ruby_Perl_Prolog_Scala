class Array
  def quicksort
    return [] if empty?   #Regresa array vacio, si el array esta vacio
    pivot = delete_at(rand(size)) #pulls/extrae pivote en una posicion random
    left, right = partition(&pivot.method(:>)) #Compara array, divide en dos arrays nuevos
    return *left.quicksort, pivot, *right.quicksort #splat argument = es porque es recursivo, convierte argumentos en array
  end
end

arr = [34,2,1,5,30,2,4,6,9]
p arr.quicksort
gets()