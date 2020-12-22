### Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input. ###

# Input:
# - Two positive integers via user input

# Output:
# - Arithmetic of the following operations:
#     - Addition
#     - Subtraction
#     - Product
#     - Quotient
#     - Remainder
#     - Power

# Rules:
# - Don't worry about validating input

# DATA STRUCTURES:
# - Integers

# ALGORITHM:
# - Prompt for two integers, store in variables
# - Print out addition
#     - " subtraction
#     - " multiplicaiton
#     - " division
#     - " quotient
#     - " remainder
#     - " power

def prompt(message)
  puts "==> #{message}"
end

prompt('Enter the first number: ')
num1 = gets.chomp.to_i

num2 = 1
loop do
  prompt('Enter the second number: ')
  num2 = gets.chomp.to_i
  break unless num2 == 0
  prompt('Cannot be 0. Enter any other number.')
end

puts "\n"
prompt("ARITHMETIC")
prompt("-------------------")

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{(num1.to_f / num2).round(2)}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")