puts "Введите день: "
day = gets.chomp.to_i
puts "Введите месяц: "
month = gets.chomp.to_i
puts "Введите год: "
year = gets.chomp.to_i
full_months_count = 0

if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  months = [31,29,31,30,31,30,31,31,30,31,30,31]
else
  months = [31,28,31,30,31,30,31,31,30,31,30,31]
end

i = 0
while i <= month - 2 do
  full_months_count += months[i]
  i += 1
end

puts full_months_count + day
