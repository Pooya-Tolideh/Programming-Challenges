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

contacts_array = contacts.to_a
contacts_array.sort_by! do |key|
	key[0].split(" ")[1].upcase
end

contacts = Hash[contacts_array]
count = contacts.size
targets = []
redunts = []

full_names = contacts.keys
go_next = false
(0..count-1).each do |i|
	redunts.each do |redunt| 
		if i == redunt
			puts "reee"
			go_next =  !go_next
			break
		elsif go_next
			go_next = !go_next
		else
			next
		end
	end
	next if go_next
	
	ref_name = full_names[i].split(" ")[1]
	(i+1..count-1).each do |j|
		if full_names[j].split(" ")[1] == ref_name
			targets << j
			redunts << j
		else
			next
		end
	end
	if targets.size > 1
		starts = targets.first
		finishs = targets.last
		sorted_section = contacts_array[starts..finishs].sort_by! do |key|
			key[0].split(" ")[0].upcase
		end
	end
	targets.clear
end
