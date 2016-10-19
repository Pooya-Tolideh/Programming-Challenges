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

def start()

	puts "Give me some stuff to put in an array. Say \"done\" when your array is finished"
	
	arr = []
	while true 
		print "> "
		item = $stdin.gets.chomp
		if item.downcase == "done"
			break
		else
			arr << item
		end
	end
end

start
