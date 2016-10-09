# This function gets your age in total seconds and returns how old you are actually
# assumtion_1: is that each year is 365.25 days belongs_to
# assumption_2: Months have even number of days

#calculate the actual number
def get_num(a,b)
	return (a/b).to_i
end
fs
#calculate the remainder
def get_rm (a,b)
	return (a%b).to_i
end

#main function
def age(total)
	yr_sec = 365.25*24*3600
	mth_sec = (365.25/12)*24*3600
	day_sec = 24*3600
	
	#remainders after divisions
	yr_rm = get_rm(total, yr_sec)
	mth_rm = get_rm(yr_rm,mth_sec)
	day_rm = get_rm(mth_rm,3600)
	hrs_rm = get_rm(day_rm,60)
	
	puts "\n\nyou are 
	#{get_num(total,yr_sec)} years, 
	#{get_num(yr_rm,mth_sec)} months, 
	#{get_num(mth_rm,day_sec)} days,
	#{get_num(day_rm,3600)} hours,
	#{get_num(hrs_rm,60)} minutes,
	#{hrs_rm} seconds Old"
end

puts "Tell me how old you are in seconds \n\v"
total = gets.chomp.to_i
age(total)
