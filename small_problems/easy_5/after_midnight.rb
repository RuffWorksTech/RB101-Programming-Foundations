=begin
The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.
=end

# Input:
# - Single integer

# Output:
# - Time in 24-hour format (hh:mm)

# Rules:
# - Cannot use Date or Time classes
# - Negative numbers mean before midnight
# - Positive numbers mean after midnight
# - Must work with any integer input

# EXAMPLES:
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# DATA STRUCTURES:
# - Integers

# ALGORITHM:
# - Determine if value is greater than 0 or less than 0
# - Create two algorithms, one for positive, one for negative
# - Positive:
# - Initalize counter for days
# - Initialize counter for hours
# - Initialize counter for minutes
# - Create num.times loop
#     - Increment minutes += 1
#     - If minutes == 60, increment hours += 1, set minutes to 0
#     - If hours == 24, increment days += 1, set hours to 0, set minutes to 0
# - Return string of hh.mm

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


#MY ORIGINAL SOLUTION (ONLY CALCULATES POSITIVE NUMBERS)
# def format_time(hours, minutes)
#   hr_format = hours.between?(0, 9) ? "0#{hours}" : hours
#   min_format = minutes.between?(0, 9) ? "0#{minutes}" : minutes
#   "#{hr_format}:#{min_format}"
# end

# def time_of_day(num)
#   hours = 0
#   minutes = 0
  
#   num.abs.times do |min|
#     minutes += 1
#       if minutes == 60
#         hours += 1
#         minutes = 0
#       end
#       if hours == 24
#         hours = 0
#         minutes = 0
#       end
#   end
#   format_time(hours, minutes)
# end