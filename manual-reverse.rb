# This is an algorithm for reversing an array without using 'reverse' method


# arr = ['dog', 'cat', 'bear','hello']
# arr_ln = arr.size - 1

# # using a temporary array
# arr_rev << arr.pop until arr.empty?

# # not using a temporary array
# (0..(arr_ln/2)).each do |i|
# 	x = arr[i]
# 	arr[i] =  arr[(arr_ln - i)]
# 	arr[(arr_ln - i)] = x
# end

def method_1(arr)
	arr_rev = []
	arr_rev << arr.pop until arr.empty?
	return arr_rev
end


def start()
	puts "Give me some stuff to put in an array. Say \"done\" when your array is finished"
	
	arr = []
	while true 
		print "> "
		item = $stdin.gets.chomp
		if item.downcase == "done"
			puts "\n your array is: #{arr}"
			break
		else
			arr << item
		end
	end
	
	puts "\n" + ("-" * 10)

	while true
		puts "\n Would like me to use a temporary array or not? [yes/no]"
		answer = $stdin.gets.chomp.downcase
		if answer == "yes"
			# method_1()
			break
		elsif answer == "no"
			# method_2()
		else
			puts "\nwrong answer!"
		end
	end
	
	puts "\n" + ("-" * 10)
	puts "\n your reversed array is: #{reversed_array}"
end

start
