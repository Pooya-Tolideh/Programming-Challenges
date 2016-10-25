puts "Enter your contacts' information"
finish = false
contacts = Hash.new

while !finish 
	print "\nFirst Name: "
	first_name = gets.chomp.downcase.capitalize

	print "\nLast Name: "
	last_name = gets.chomp.downcase.capitalize
	if (last_name == '' && first_name == '')
		puts "At least enter a first name or last name to proceed"
	else
		while true
			print "\nPhone Number: "
			phone = gets.chomp
			(phone.to_i == 0) ? (puts "\n\nInvalid input. Please enter a valid number!") : break
		end 

		contacts[(first_name+" "+last_name)] = phone

		while true 
			puts "-"*10
			print "\nAdd another contanct? [ y/n ]: "
			add_more = gets.chomp.downcase
			if add_more == 'n'
				finish = true
				break
			elsif add_more == 'y'
				puts ">>>"
				break
			else 
				puts "\nI did not understand that!\n"
			end
		end
	end
end
