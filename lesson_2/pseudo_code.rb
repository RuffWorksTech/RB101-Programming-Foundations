# Practicing pseudo code

START

# Create a method that returns the sum of two integers
DEFINE METHOD addition (number1, number2)
  SET sum = number1 + number2
  return sum


# Create a method that takes an array of strings and returns a string that is all those strings concatenated together
DEFINE METHOD concatenate_strings (array_of_strings)
  SET iterator = 1
  SET combined_string
  
  Iterate for each index
    Remove value from array, add to combined_string
    SET iterator + 1
    
    return combined_string


# Create a method that takes an array of integers and returns a new array with every other element
DEFINE METHOD every_other (array_of_integers)
  SET new_array
  SET iterator = 1
  
  Iterate for each index
    Add index to array
    SET iterator + 2
    
    return new_array
    

END