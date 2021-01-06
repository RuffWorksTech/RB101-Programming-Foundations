### Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz". ###

# Input:
# - Two integers as arguments

# Output:
# - Print out of each number from the first argument to the last argument, inclusive

# Rules:
# - Numbers are separated by ', '
# - If a number is divisible by 3, replace the number with 'Fizz'
# - If a number is divisible by 5, replace the number with 'Buzz'
# - If a number is divisible by 3 and 5, replace the number with 'FizzBuzz'


# EXAMPLES:
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# DATA STRUCTURES:
# - String -> Array

# ALGORITHM:
# - Create an array of a range of the two arguments

def fizzbuzz(num1, num2)
  arr = Array(num1..num2).map! do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 3 == 0
      'Fizz'
    elsif num % 5 == 0
      'Buzz'
    else
      num
    end
  end.join(', ')
  print arr
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz