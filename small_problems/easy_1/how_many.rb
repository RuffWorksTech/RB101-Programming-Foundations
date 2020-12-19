### Write a method that counts the number of occurrences of each element in a given array. ###

# Input:
# - Single array

# Output:
# - Line for each element and the number of occurences in the array

# Rules:
# - words are case-sensitive

# EXAMPLES:
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# => car => 4
# => truck => 3
# => SUV => 1
# => motorcycle => 2
 
# DATA STRUCTURE:
# - Array or Hash
#   - Hash, as it can have keys and values
#     - The key will be the element
#     - The value will be the instance count
 
# ALGORITHM:
# - Define method that takes in one array as an argument
#     - Initialize emtpy hash
# - Iterate through array, grab unique element
#     - Make element a key
#     - Add instanct count as its value
# - Iterate through hash, print each key and value

 
vehicles = [
  'car', 'car', 'truck', 'Car', 'SUV', 'Truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
 
def count_occurences(array)
  frequency = {}
  
  array.each do |vehicle|
    frequency[vehicle.upcase] = array.count(vehicle)
  end
  
  frequency.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

count_occurences(vehicles)