puts "Введите первую сторону треугольника: "
a = gets.chomp.to_f

puts "Введите вторую сторону треугольника: "
b = gets.chomp.to_f

puts "Введите третью сторону треугольника: "
c = gets.chomp.to_f

if a>b
  lng = a
  shrt1 = b
  shrt2 = c
else 
  lng = b
  shrt1 = a
  shrt2 = c  
end  
if lng < c 
  lng = c
  shrt1 = a
  shrt2 = b      
end	
lngp = lng**2
shrt = (shrt1**2) + (shrt2**2) 

if lngp.round(2) == shrt.round(2) 
  prmg = "прямоугольный"
else
  prmg = ""	
end

if a == b && a == c
  rst = "равносторонний"
else 
  rst = ""
end

if a == b || a == c
  rbd = "равноравнобедренный"
else
  rbd = ""  
end

if prmg.length > 0 && rst.length > 0
  coma1 = " и"
end

if (prmg.length > 0 && rbd.length > 0) || (rst.length > 0 && rbd.length > 0)
  coma2 = " и"  
end

puts "Треугольник #{prmg}#{coma1} #{rst}#{coma2} #{rbd}"