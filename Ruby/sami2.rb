def hexa(n,s)
    return s if n == 0
    residuo = n % 16
    division = n/16
    if residuo > 9
        case residuo
        when 10
            s+="A"
        when 11
            s+="B"
        when 12
            s+="C"
        when 13
            s+="D"
        when 14
            s+="E"
        when 15
            s+="F"
        end
    else
        s+=residuo.to_s
    end
    hexa(division,s)
end
puts"Ingresa un numero"
a = gets.chomp.to_i 
puts "la conversion a hexadecimal es "
puts hexa(a,"").reverse