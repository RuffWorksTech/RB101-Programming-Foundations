### Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds. ###

# Input:
# - Floating point number between 0 and 360

# Output:
# - String that is that number (angle) in degrees, minutes, and seconds

# Rules:
# - Use two-digit numbers with leading zeroes when formatting the minutes and seconds
# - Use the constant given for the degree symbol

# EXAMPLES:
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# DATA STRUCTURES:
# - Float > Integer > String

# ALGORITHM:
# - Define given degree symbol constant
# - Define degrees as number to left of point
# - Define minutes as the integer of the decimal degrees minus the integer degrees * 60


DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.to_i
  minutes = ((float - degrees) * 60).to_i
  seconds = ((float - degrees - (minutes / 60.0)) * 3600).round
  if seconds == 60
    minutes += 1
    seconds = 0
  end
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end



puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")