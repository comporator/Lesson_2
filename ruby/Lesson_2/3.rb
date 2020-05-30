array = [0,1]

i = 0
while i <= 100 do
  i = array[-1] + array[-2]
  if i > 100
    break
  end
  array.push(i)
end

puts array
