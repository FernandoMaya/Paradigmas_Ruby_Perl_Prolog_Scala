print"Ingresa el Primer numero \n"
a=gets.to_i
print"Ingresa el Segundo numero \n"
b=gets.to_i
print"Ingresa el Tercer numero \n"
c=gets.to_i



if(a>b && b>c) || (c>b && b>a)
	print b," Es el numero intermedio"
end
if (b>a && a>c) || (c>a && a>b)
	print a," Es el numero intermedio"
end
if (a>c && c>b) || (b>c && c>a)
	print c," Es el numero intermedio"
end

=begin
case respuesta
when respuesta =(a>b && b>c) || (c>b && b<a)
	print b," Es el numero intermedio"
when respuesta =(b>a && a<c) || (c>a && a<b)
	print a," Es el numero intermedio"
when respuesta =(a>c && c<b) || (b>c && c<a)
	print c," Es el numero intermedio"
else
	print "Error de programador"
end
=end