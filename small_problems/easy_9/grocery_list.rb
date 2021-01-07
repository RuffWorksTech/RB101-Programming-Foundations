### Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.###

# Input:
# - Nested array of fruits and quantity pairs

# Output:
# - A flattened array with each fruit instanced for the quantity given in the input arrya pairs

# EXAMPLES:
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# ALGORITHM:
# - Initialize empty array
# - Iterate through array
#     - Push the first element into the empty array the number of times that is in the second element
# - Return array

def buy_fruit(arr)
  arr.each_with_object([]) do |pair, all_fruit|
    pair.last.times { |fruit| all_fruit << pair.first }
  end
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #== ["apples", "apples", "apples", "orange", "bananas","bananas"]