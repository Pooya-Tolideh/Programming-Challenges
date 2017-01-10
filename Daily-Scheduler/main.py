import numpy as np

def slicer(total, pom, proj_num):
# slices total time into various portions
	total = round((total * 60)/pom)					# total number of pomodoro sessions
	
	slices = [total * 0.4]						#first(most important) portion
	while (total - np.sum(slices) >= 1 and proj_num > 1):		#counter runs until there's no time left or slices reaches total number of projects
		slices.append((total - np.sum(slices)) / 2)
		proj_num -= 1
		
	for slc in slices:						# round each time portion in slices
		slices[slices.index(slc)] = int(round(slc))
		
	return slices


def convertor(time, pom):
# converts each pomodoro time portion into hours and minutes
	time = (time * pom) / 60
	hour = int(time)
	minute = int((time - hour) * 60)
	return(hour, minute)



def print_time(slices, pom):
# prints out the calculated time portions
	print("Number of sessions/time: ", slices, "\n")
	
	for slc in slices:						# loops through slices and prints out the portion in hours and minutes
		hour, minute = convertor(slc, pom)
		if hour == 0:
			hour = ""
		else:
			hour = " {}h ".format(hour)
		if minute == 0:
			minute = ""
		else:
			minute = " {}m".format(minute)
		print("{}.{}{}".format(i, hour, minute))
		i += 1	


def main():
	
	pom = 50.0							# pomodoro duration
	proj_num = 5							# number of portions 
	total = float(input("how much time do you have? "))
	slices = slicer(total, pom, proj_num)
	print_time(slices, pom)
  
main()
