def substrings(string, dictionary)

	results = Hash.new
	new_string = string.downcase
	
	dictionary.each do |word|
		results[word] = new_string.scan(word).count if new_string.include?(word)
	end

	results

end

puts "Type a phrase or sentence to show its dictionary and word count:"
string = gets.chomp
puts "Dictionary and word count:"
dictionary = string.split(/\W+/).map
puts substrings(string, dictionary)