=begin
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.
=end

# Input:
# - Two integers

# Output:
# - An array that has the number of elements of the first given integer and follows the sequence given by the second integer

# Rules:
# - Each element should be a multiple of the starting number
# - Count argument will always be 0 or greater
# - If the count is 0, an empty list should be returned

# EXAMPLES:
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# ALGORITHM:
# - Initialize an empty array
# - Initialize a counter variable equal to the second integer argument
# - Loop the same number of times as the first given integer
#     - Push the counter variable into the empty array
#     - Increment by the counter variable
# - Return array


def sequence(arr_size, instance)
  result = []
  counter = instance
  arr_size.times do
    result << counter
    counter += instance
  end
  result
end


p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []