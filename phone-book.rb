puts "Enter your contacts' information"

print "\nFirst Name: "
first_name = gets.chomp.downcase.capitalize

print "\nLast Name: "
last_name = gets.chomp.downcase.capitalize

while true
	print "\nPhone Number: "
	phone = gets.chomp
	(phone.to_i == 0) ? (puts "\n\nInvalid input. Please enter a valid number!") : break
end 
contacts = Hash.new
