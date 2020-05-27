puts 'Введите первый коэффициент: '
a = gets.chomp.to_f

puts 'Введите второй коэффициент: '
b = gets.chomp.to_f

puts 'Введите третий коэффициент: '
c = gets.chomp.to_f

D = b**2 - 4 * a * c


if D < 0
  message = "Дискриминнант = #{D}. Корней нет"
elsif D == 0
  root = (- b)/(2 * a)
  message = "Дискриминнант = #{D}. Корень = #{root}"
else
  root_1 = (- b + Math.sqrt(D))/(2 * a)
  root_2 = (- b - Math.sqrt(D))/(2 * a)
  message = "Дискриминнант = #{D}. Корни:  #{root_1}, #{root_2}"
end

puts message
