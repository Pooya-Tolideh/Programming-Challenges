# This is a simple monty hall game where the game advances based on user's choice
# The goal was to practice concepts such as loops, methods, i/o and control-flow


def gold_room 
	puts "This room is full of gold. How much do you take?"
	
	print "> "
	choice = $stdin.gets.chomp
	
	if !(choice == "0" || choice == "1")
		how_much = choice.to_i
	else 
		dead("Man, learn to type a number.")
	end
	
	if how_much < 50 
		puts "Nice, you're not greedy, you win!"
	else 
		dead("You greedy bastard!")
	end
end


def bear_room
	puts "There is bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false
	
	while true
		print "> "
		choice = $stdin.gets.chomp.downcase
		
		if choice == "take honey"
			dead("The bear looks at you then slaps your face off.")
		elsif choice == "taunt bear" && !bear_moved
			puts "The bear has moved from the door. You can go through it now."
		bear_moved = true
		elsif choice == "open door" && bear_moved
			gold_room
			break
		else
			# posting a message when input is needed again. false input situation
			# good practice to use else+message for a loop that needs to restart
			puts "I got no idea what that means."
		end
	end
end


def cthulhu_room
	puts """
	Here you see the great evil Cthulhu.
	He, it, whatever at you and you go insane.
	Do you flee for your life or eat your head?"""
	
	# This function is called again from inside if conditions are not met
	# loop is here to avoid starting from the top
	while true
		print "> "
		choice = $stdin.gets.chomp.downcase
		
		if choice.include? "flee"
			puts "you're back in the dark room. Choose a door"
			return false
		elsif choice.include? "head"
			dead("Well that was tasty!")
			return true
		end
	end
end


def dead(why)
	puts why, " Good job!"
end


def start 
	puts """
	You are in a dark room.
	There is a door to your take?"""
	
	# This function is called again from its branch functions
	# Use while-loop to avoid restarting from beginning
	# Create inifinite loop to allow indefinite tries
	# Use break to end the loop when needed
	while true
		print "> "
		choice = $stdin.gets.chomp.downcase
		if choice == "left"
			bear_room
			break
		elsif choice == "right"
			 if cthulhu_room
			 	break
			 end
		else 
			dead("You stumble around the room until you starve.")
			break
		end
	end
end	

start

	

		
		
		
		
		
		
		
		
		
		

