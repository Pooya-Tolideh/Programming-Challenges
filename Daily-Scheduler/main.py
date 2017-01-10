def convertor(time):
	hour = int(time)
	minute = int((time - hour) * 60)
	return(hour, minute)

def manage_time():	
	slices = []
	total = float(input("how much time do you have? "))
	
	slices.append(total * 0.4)
	
	slices.append(total * 0.3)
	
	slices.append(total * 0.15)
	
	slices.append(total * 0.075)
	
	slices.append(slices[-1])
	
	i = 1
	
	for slc in slices:
		hour, minute = convertor(slc)
		if hour == 0:
			hour = ""
		else:
			hour = "{}h".format(hour)
		if minute == 0:
			minute = ""
		else:
			minute = "{}m".format(minute)
		print("{}. {} {}".format(i, hour, minute))
		i = i + 1
