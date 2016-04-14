def cipher(string, key)

	key = key.to_i
	letters = string.split("")
	numbers = letters.map {|x| x.ord}
	new_letters = numbers.map do |y|
		
		if y <= 90 && y >= 65
			(((y - 65 + key) % 26) + 65).chr
		elsif y <= 122 && y >= 97
			(((y - 97 + key) % 26) + 97).chr
		else
			y.chr
		end
	end
	
	puts "The encrypted code is #{new_letters.join}"
end

puts "Enter the text you would like to encrypt."
string = gets.chomp
puts "Enter the key (an integer) to your code."
key = gets.chomp
cipher(string, key)