### Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.###

# Input:
# - Two arguments
#     - A positive integer
#     - A boolean

# Output:
# - Single integer (salary bonus)

# EXAMPLES:
# puts calculate_bonus(2800, true) # => 1400
# puts calculate_bonus(1000, false) # => 0
# puts calculate_bonus(50000, true) # => 25000

# ALGORITHM:
# - Define method that takes an integer and a boolean as arguments
# - If statement:
#     - Given boolean is true: calculate bonus as .5 of the integer
#     - Given boolean is false: bonus is 0
    
def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

p calculate_bonus(2800, true) # => 1400
p calculate_bonus(1000, false) # => 0
p calculate_bonus(50000, true) # => 25000