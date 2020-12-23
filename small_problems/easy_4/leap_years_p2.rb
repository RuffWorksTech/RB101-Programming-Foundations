=begin
A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.
=end

# Input:
# - Single positive integer

# Output:
# - True if integer is a leap year before 1752 on the Julian calendar and after 1752 on the Gregorian calendar, false otherwise

# Rules:
# - On the Julian calendar, leap years occur in any year that is evenly divisible by 4

# EXAMPLES:
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# ALGORITHM:
# - If year < 1752
#     If year % 4 == 0, true
# - Else if year >= 1752
#   - If year % 400 == 0, true
#     - Else if year % 100 == 0, false
#   - Else if year % 4 == 0, true


def leap_year?(year)
  if year < 1752
    year%4 == 0
  elsif year >= 1752
    if year%400 == 0
      true
    elsif year%100 == 0
      false
    else
      year%4 == 0
    end
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true