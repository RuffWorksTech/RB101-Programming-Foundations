# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# Input:
# - one integer

# Output:
# - true if the absolute value is odd, false if it is even

# Rules:
# - Input integer may be positive, negative, or zero
# - Only two outputs allowed: true or false
# - Assume argument is a valid integer value

# EXAMPLES:
# is_odd?(2)    # => false
# is_odd?(5)    # => true
# is_odd?(-17)  # => true
# is_odd?(-8)   # => false
# is_odd?(0)    # => false

# ALGORITHM:
# - Create method that takes one argument (integer)
# - Convert integer to absolute value
# - Condition if absolute value is even
# - Return boolean

def is_odd?(integer)
  integer.abs.odd?
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)