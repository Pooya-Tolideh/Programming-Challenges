# This program asks the user for a text block and a word they are looking for in it
# It then returns the text with the word highlighted. If doesn't find it, it'll ask the user to restart the search

def finder (text , word)
	if text.include?(word)
		puts text.gsub(word, "*#{word}*")
		return true
	else
		puts "word not found"
	end
end

puts "Enter a text:"
print "> "
text = gets.chomp.downcase
observer = false

while !observer
	puts "\nEnter a word that you are looking for: "
	print "> "
	word = gets.chomp.downcase
	puts
	observer = finder(text,word)
end
