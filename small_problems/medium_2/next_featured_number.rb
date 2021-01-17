=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.
=end

# Input:
# - A single integer

# Output:
# - The next featured number that is greater than the given integer

# Rules:
# - A featured number is:
#     - An odd number
#     - A multiple of 7
#     - Each digit occurs precisely once each

# ALGORITHM:
# - Initialize featured number variable
# - Loop until the last number calculated is greater than the given integer
#     - Loop until a valid featured number is created
#     - Add 7
#         - If number is even, add 7 and start again
#         - If number has two digits that are the same number, add 7 and start again
# - Return featured number

def featured(int)
  if int >= 9_876_543_210
    return 'There is no possible number that fulfills those requirements.'
  end
  
  featured_num = 0
  until featured_num > int
    loop do
      featured_num += 7
      next if featured_num.even?
      next if featured_num.digits != featured_num.digits.uniq
      break
    end
  end
  featured_num
end



p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements