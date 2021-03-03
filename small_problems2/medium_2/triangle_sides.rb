=begin
----------------------------PROMPT----------------------------------
Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

-----------------------------INPUT----------------------------------
3 numbers

----------------------------OUTPUT----------------------------------
Symbol

-----------------------------RULES----------------------------------
Explicit:
A triangle is classified as follows:

- equilateral = All 3 sides are of equal length
- isosceles = 2 sides are of equal length, while the 3rd is different
- scalene = All 3 sides are of different length

- To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Implicit:
- Input values can be floats

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
Place input numbers into array, sort in ascending order
If any element is 0, turn :invlaid
If first two elements are not greater than the third, return invalid
If all elements are the same, return :equilateral
If any two sides are the same, return :isosceles
Else return :scalene
=end

def triangle(n1, n2, n3)
  triangle = [n1, n2, n3].sort
  
  case
  when triangle.any?(0) || triangle[0] + triangle[1] <= triangle[-1]
    :invalid
  when triangle.all?(n1)
    :equilateral
  when triangle[0] == triangle[1] || triangle[0] == triangle[2] || triangle[1] == triangle[2]
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