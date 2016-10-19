puts "Enter your contacts' information"
contact_array = []

print "\nFirst Name: "
first_name = gets.chomp.downcase.capitalize

print "\nLast Name: "
last_name = gets.chomp.downcase.capitalize

print "\nPhone Number: "
phone = gets.chomp

person_info = []
person_info << first_name + " " + last_name
person_info << phone

contact_array << person_info
