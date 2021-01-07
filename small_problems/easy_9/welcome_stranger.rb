### Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation. ###

# Input:
# - One array and one hash as arguments

# Output:
# - Printout of the elements of the array as a name and the values of the hash as the title and occupation

# Rules:
# - The array will contain 2 or more elements that will be a name. The hash will have two keys with respective values that are a title and an occupation, respectively.

# EXAMPLE:
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# ALGORITHM:
# - Print out interpolated string with the array joined and the two values of the hash included.


def greetings(arr, hash)
  puts "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.