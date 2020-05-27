puts 'Введите первую сторону треугольника: '
a = gets.chomp.to_f

puts 'Введите вторую сторону треугольника: '
b = gets.chomp.to_f

puts 'Введите третью сторону треугольника: '
c = gets.chomp.to_f

short_side_1, short_side_2, long_side = [a, b, c].sort

long_side_squared = long_side**2
short_sides_squared = short_side_1**2 + short_side_2**2

if long_side_squared.round(2) == short_sides_squared.round(2)
  right_triangle_marker = 'прямоугольный'
else
  right_triangle_marker = ''
end

if a == b && a == c
  equilateral_triangle_marker = 'равносторонний'
else
  equilateral_triangle_marker = ''
end

if a == b || a == c
  isosceles_triangle_marker = 'равноравнобедренный'
else
  isosceles_triangle_marker = ''
end

if right_triangle_marker.length > 0 && equilateral_triangle_marker.length > 0
  coma1 = ' и'
end

if (right_triangle_marker.length > 0 && isosceles_triangle_marker.length > 0) || (equilateral_triangle_marker.length > 0 && isosceles_triangle_marker.length > 0)
  coma2 = ' и'
end

puts "Треугольник #{right_triangle_marker}#{coma1} #{equilateral_triangle_marker}#{coma2} #{isosceles_triangle_marker}"
