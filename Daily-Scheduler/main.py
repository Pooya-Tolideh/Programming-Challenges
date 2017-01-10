import numpy as np

def slicer(total, pom):
# slices total time into various portions
	counter = 1
	total = round((total * 60)/pom)					# total number of pomodoro sessions
	
	slices = [total * 0.4]						#first(most important) portion
	while (total - np.sum(slices) >= 1 and counter <= 5):		#counter runs until there's no time left or slices reaches total number of projects
		slices.append((total - np.sum(slices)) / 2)
		counter += 1
		
	for slc in slices:						# round each time portion in slices
		slices[slices.index(slc)] = int(round(slc))
		
	return slices


def print_time(slices, pom):
# prints out the calculated time portions
	print("Number of sessions/time: ", slices, "\n")


def main():
	
	pom = 50.0							# pomodoro duration
	total = float(input("how much time do you have? "))
	slices = slicer(total, pom)
  
main()
