### Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.###

# Input:
# - Length and width as whole integers (in meters)

# Output:
# - Area of room in meters and sq. ft

# Rules:
# - 1 sq. meter == 10.7639 sq. ft
# - Don't worry about validating input
# - Round meters to tenths
# - Round sq. ft to hundredths

# EXAMPLE:
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# DATA STRUCTURE:
# - Strings converted to integers should be fine here

# ALGORITHM:
# - Prompt for length and width
# - Define method that accepts two integers as arguments
#     - Calculate & return area
# - Convert area in meters to sq. ft
# - Print both meter and sq. ft. areas

def calculate_area(num1, num2)
  (num1.to_i.to_f * num2.to_i).round(1)
end

puts '=> Enter the length of the room in meters:'
length = gets.chomp

puts '=> Enter the width of the room in meters:'
width = gets.chomp

area = calculate_area(length, width)
puts "=> The area of the room is #{area} square meters (#{(area * 10.7639).round(2)} square feet)."