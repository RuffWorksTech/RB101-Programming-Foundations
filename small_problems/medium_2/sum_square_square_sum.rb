### Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers. ###

# Input:
# - Single integer

# Output:
# - The difference between the square of the sum of the first n positive and the sum of the squares of the first n positive integers

# ALGORITHM:
# - Compute the square of the sums
#     - Create array of 1 to the given number
#     - Sum the array, square it, return it
# - Compute the sum of the squares
#     - Create array of 1 to the given number
#     - Replace each number with its square
#     - Sum the array, return it
# - Return the difference

def square_sums(n)
  Array(1..n).sum**2
end

def sum_squares(n)
  Array(1..n).map { |n| n**2 }.sum
end

def sum_square_difference(num)
  square_sums(num) - sum_squares(num)
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150