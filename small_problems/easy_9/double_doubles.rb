=begin 
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.
=end

# Input:
# - Single integer

# Output
# - The given integer doubled (2X) unless the argument is a double number. 

# Rules:
# - Double numbers return unchanged.

# EXAMPLES:
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# ALGORITHM:
# - Check length of integer
#     - If odd, double the integer
#     - If even, check if left half equal right half
#         - If yes, leave it alone
#         - If no, double it
# - Return integer

def twice(num)
  length = num.to_s.size
  center = length / 2
  if length.odd?
    num *= 2
  else
    num.to_s[0, center] == num.to_s[center..-1] ? num : num *= 2
  end
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10