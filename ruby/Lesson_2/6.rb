basket = {}
ammount_total = 0

loop do
  puts "Товар: "
  product = gets.chomp
  break if product == "стоп"
  puts "Цена: "
  price = gets.to_f
  puts "Количество: "
  count = gets.to_i
  basket[product] = {price => count}
end

puts basket

basket.each do |product, prices|
  prices.each do |price, count|
  puts "Итоговая сумма за #{product}: #{price * count}"
  ammount_total += price * count
  end
end

puts "Общая сумма: #{ammount_total}"
