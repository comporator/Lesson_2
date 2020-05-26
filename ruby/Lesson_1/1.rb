puts "Как вас зовут?"
name = gets.chomp.capitalize!

puts "Какой у вас рост?"
height = gets.chomp.to_i

weight = (height - 110)*1.15

if weight >= 0
  puts "#{name}, Ваш идеальный вес: #{weight}"
else 
  puts "Ваш вес уже оптимальный"	
end