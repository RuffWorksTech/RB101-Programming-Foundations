### Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself). ###

# Input:
# - One argument

# Output:
# - Square of those arguments

# EXAMPLES:
# square(5) == 25
# square(-8) == 64

# ALGORITHM:
# - Define method that takes one argument and squares it
# - Square those arguments

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64