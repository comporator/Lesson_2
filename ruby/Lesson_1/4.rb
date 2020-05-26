puts "Введите первый коэффициент: "
a = gets.chomp.to_f

puts "Введите второй коэффициент: "
b = gets.chomp.to_f

puts "Введите третий коэффициент: "
c = gets.chomp.to_f

d = (b**2) - (4*a*c)


if d < 0
  msg = "Дискриминнант = #{d}. Корней нет"
elsif d == 0
  r = ((-1)*b)/(2*a)
  msg = "Дискриминнант = #{d}. Корень = #{r}"
else
  r1 = (((-1)*b) + Math.sqrt(d))/(2*a)
  r2 = (((-1)*b) - Math.sqrt(d))/(2*a)
  msg = "Дискриминнант = #{d}. Корни:  #{r1}, #{r2}"
end

puts msg
