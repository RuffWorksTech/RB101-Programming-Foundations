### Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer. ###

# Input:
# - Single positive integer
# - Single-letter string ('s' or 'p')

# Output:
# - Sum or product of all integers from 1 to the given integer

# Rules:
# - If given string is 's', return the sum of all integers from 1 to the given integer
# - If given string is 'p', return the product of all integers from 1 to the given integer

# DATA STRUCTURES:
# - Integers and Strings

# ALGORITHM:
# - Define method to return sum of all integers up to the given integer
#   - Initialize counter = 1
#   - Until counter > given integer
#     - sum += counter
#     - count += 1
# - Define method to return product of all integers up to the given integer
#   - Initialize counter = 1
#   - Until counter > given integer
#     - product *= counter
#     - count += 1

# - Prompt for positive integer
# - Prompt for 's' or 'p' for sum or product
# - Initialize empty integer
# - If string is 's'
#   - Call sum product
# - Else if input is 'p'
#   - Call product method


def sum_of_all_integers(num)
  (0..num).sum
end

def product_of_all_integers(num)
  (1..num).inject(1, :*)
end

print ">> Please enter an integer greater than 0: "
int = gets.chomp

print ">> Enter 's' to compute the sum, 'p', to compute the product: "
choice = gets.chomp.downcase

result =  case choice
          when 's' then sum_of_all_integers(int.to_i)
          when 'p' then product_of_all_integers(int.to_i)
          end

puts ">> The product of the integers between 1 and #{int} is #{result}."