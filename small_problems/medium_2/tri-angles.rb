=begin
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.
=end

# Input:
# - Three values, each an angle in a triangle

# Output:
# - A symbol indicating if the triangle is invalid, right, acute, or obtuse

# Rules:
# - Invalid = all angles to not add up to 180 degrees
# - Right = tne angle of the triangle is a right angle (90 degrees)
# - Acute = all 3 angles of the triangle are less than 90 degrees
# - Obtuse = one angle is greater than 90 degrees.

# ALGORITHM:
# - Similar to the triangle side lengths, push each into an array, sort
# - Return :invalid if the sum != 180 degrees
# - Return :right if one value is 90 degrees
# - Return acute if all three are less than 90
# - Return obtuse if one is greater than 90

def triangle(side1, side2, side3)
  arr = [side1, side2, side3]
  if arr.sum != 180 || arr.any?(0)
    :invalid
  elsif arr.any?(90)
    :right
  elsif arr.any? { |n| n > 90 }
    :obtuse
  else
    :acute
  end
end



p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid