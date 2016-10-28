# This program gets an array and reverses it using two different algorithms without implementing 'reverse' method. 

def method_1(arr)
	arr_rev = []
	arr_rev << arr.pop until arr.empty?
	return arr_rev
end
	
def method_2(arr)
	arr_ln = arr.size - 1
	(0..(arr_ln/2)).each do |i|
		x = arr[i]
		arr[i] =  arr[(arr_ln - i)]
		arr[(arr_ln - i)] = x
	end
	return arr
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
			reversed_array = method_1(arr)
			break
		elsif answer == "no"
			reversed_array = method_2(arr)
			break
		else
			puts "\nwrong answer!"
		end
	end
	
	puts "\n" + ("-" * 10)
	puts "\n your reversed array is: #{reversed_array}"
end

start
