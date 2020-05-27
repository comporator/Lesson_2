puts 'Введите первую сторону треугольника: '
side_a = gets.chomp.to_f

puts 'Введите вторую сторону треугольника: '
side_b = gets.chomp.to_f

puts 'Введите третью сторону треугольника: '
side_c = gets.chomp.to_f

short_side_1, short_side_2, long_side = [side_a, side_b, side_c].sort

long_side_squared = long_side**2
short_sides_squared = short_side_1**2 + short_side_2**2

right_triangle_marker =
  if long_side_squared.round(2) == short_sides_squared.round(2)
    'прямоугольный'
  else
    ''
  end

equilateral_triangle_marker =
  if side_a == side_b && side_a == side_c
    'равносторонний'
  else
    ''
  end

isosceles_triangle_marker =
  if side_a == side_b || side_a == side_c
    'равноравнобедренный'
  else
    ''
  end

if right_triangle_marker.length > 0 && equilateral_triangle_marker.length > 0
  coma1 = ' и'
end

if (right_triangle_marker.length > 0 && isosceles_triangle_marker.length > 0) || (equilateral_triangle_marker.length > 0 && isosceles_triangle_marker.length > 0)
  coma2 = ' и'
end

puts "Треугольник #{right_triangle_marker}#{coma1} #{equilateral_triangle_marker}#{coma2} #{isosceles_triangle_marker}"
