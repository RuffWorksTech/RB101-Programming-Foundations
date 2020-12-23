=begin
 In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year. ###
=end

# Input:
# - Single integer year as an argument

# Output:
# - True if the year is a leap year, false otherwise

# Rules:
# - Integer argument must be > 0

# DATA STRUCTURES:
# - Integers

# ALGORITHM:
# - If year is divisible by 4
#     - It year is divisible by 100
#         - Then it is not a leap year
#     - Else it is a leap year
# - Else it is false

def leap_year?(year)
  result = false
  if year % 4 == 0
    if year % 100 == 0
      result = false
    else
      result = true
    end
  end
  
  result = true if year % 400 == 0
  result
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true