letters = [*'a'..'z']
vowels = "aeiouy".split('')
letters_hash = {}

i = 0
while i <= letters.count-1 do
  vowels.each do |vowel|
    if letters[i] == vowel
      letters_hash[letters[i].to_sym] = i + 1
      break
    end
  end
  i += 1
end

puts letters_hash
