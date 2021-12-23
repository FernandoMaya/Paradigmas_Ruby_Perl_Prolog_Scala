class Array
    def swap(a,b)
        self[a], self[b] = self[b], self[a]
    end
end
 
a = [99,86,48,16,82,50,25,62,8,45]  #Será ordenado mediante bubble sort

 
begin
        intercambio = false
        (a.count-1).times do |i|
                if a[i] > a[i+1]  # Si se cumple la condición, entonces intercambiamos.
                        a.swap(i,i+1)
                        intercambio = true
                end # if
                next
        end # times
        puts "a = " << a.join(" , ")
    end while intercambio == true
    gets()