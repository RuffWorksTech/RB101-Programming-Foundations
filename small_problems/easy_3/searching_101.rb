### Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers. ###

# Input:
# - 6 integers via user input

# Output:
# - Check if last number occurs amonst the first 5 numbers

# EXAMPLES:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].


# DATA STRUCTURES:
# - Strings > Integers > Array


# ALGORITHM:
# - Initialize an empty array
# - Prompt for 6 numbers form user, store each in local variable as an integer
#     - After each input, shovel each into the array
# - Check if the 6th number is in the array
#     - If it is, print 'The number #{6th number} appears in #{array}'
#     - Else, print 'The number #{6th number} does not appear in #{array}'

arr = []

def message(string)
  "==> " << string
end


print message('Enter the 1st number: ')
arr << gets.chomp.to_i

print message('Enter the 2nd number: ')
arr << gets.chomp.to_i

print message('Enter the 3rd number: ')
arr << gets.chomp.to_i

print message('Enter the 4th number: ')
arr << gets.chomp.to_i

print message('Enter the 5th number: ')
arr << gets.chomp.to_i

print message('Enter the last number: ')
last_num = gets.chomp.to_i

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}."
else
  puts "The number #{last_num} does not appear in #{arr}."
end