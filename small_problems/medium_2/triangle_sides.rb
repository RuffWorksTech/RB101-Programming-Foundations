=begin
A triangle is classified as follows:


To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
=end

# Input:
# - Three numbers, each is the length of one side of a triangle

# Output:
# - A indicating on whether the triangle sides given produce an equilateral, isosceles, scalene, or invalid triangle

# Rules:
# - Equilateral =  All 3 sides are of equal length
# - Isosceles =  2 sides are of equal length, while the 3rd is different
# - Scalene = All 3 sides are of different length

# ALGORITHM:
# - Push each value into an array, sort
# - If the sum of the first two values is not > the last value, return :invalid
# - If all three sides are equal, return :equilateral
# - If 2 sides are of equal length and the third is different, return :isosceles
# - If all 3 sides are of different length, return :scalene


def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort!
  if arr[0] + arr[1] <= arr[2]
    :invalid
  elsif arr[0] == arr[1] && arr[0] == arr[2]
    :equilateral
  elsif arr[0] == arr[1] || arr[0] == arr[2] || arr[1] == arr[2]
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid