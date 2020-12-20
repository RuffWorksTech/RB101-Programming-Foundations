### Build a program that displays when the user will retire and how many years she has to work till retirement. ###

# Input:
# - Two positive integers, current age and the desired age to retire

# Output:
# - Current year
# - Year when the user will retire
# - How many years to work until retirement

# DATA STRUCTURE:
# - Integers and Strings

# EXAMPLE:
# => What is your age? 30
# => At what age would you like to retire? 70

# => It's 2016. You will retire in 2056.
# => You have only 40 years of work to go!

# ALGORITHM:
# - Prompt for current age
# - Prompt for desired age for retirement
# - Calculate year of retirement
# - Print current year and year of retirement
# - Print years until retirement

def get_input
  gets.chomp.to_i
end

current_year = Time.now.year

print 'What is your age? '
current_age = get_input

print 'At what age would you like to retire? '
rtrment_age = get_input

yrs_to_work = rtrment_age - current_age

puts "It's #{current_year}. You will retire in #{current_year + yrs_to_work}"
puts "You have only #{yrs_to_work} years of work to go!"