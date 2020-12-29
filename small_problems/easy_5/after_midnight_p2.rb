=begin
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.
=end

# Input:
# - Single string in hh:mm time format

# Output:
# - Single integer representing the time before or after midnight

# Rules:
# - Cannot use Date or Time classes

# EXAMPLES:
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# DATA STRUCTURES:
# - String -> Array -> Integer


# ALGORITHM:
# - CONSTANT minutes per hour
# - CONSTANT hours per day
# - CONSTANT minutes per day

# - After_midnight(time string)
#     - Hours, minutes = string to int
#     - Delta hours = hours % hours per day
#     - Total minutes = delta hours * 60 + minutes

# - Before_midnight(time string)



MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY


def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  ( hours % HOURS_PER_DAY )  * MINUTES_PER_HOUR + minutes
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

p after_midnight('00:26') == 26
p after_midnight('01:30') == 90
p before_midnight('23:30') == 30

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0