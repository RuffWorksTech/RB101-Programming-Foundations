### Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future. ###

# Input:
# - A single integer that is a year

# Output:
# - A single integer representing the number of Friday the 13ths in the given year

# Rules:
# - The year will be greater than 1752 and can be any future year

# ALGORITHM:
# - Initialize a counter
# - In the year given check each friday
#     - If the friday is also a thirteenth, iterate the counter + 1

require 'date'

def friday_13th(year)
  count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  count
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2