### Given the produce hash, write a method `select_fruit` that selects the key-value pairs whose value is `'Fruit'` ###

# def select_fruit(produce_hash)
#   produce_hash.select { |k, v| v == 'Fruit' }
# end


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
# -------------------------------------------------------------------------------------------------------------------



### Write a method that doubles the integers in an array and mutates the caller ###

# def double_numbers!(numbers)
# tick = 0  
  
#   until tick == numbers.size
#     numbers[tick] *= 2
#     tick += 1
#   end
  
#   numbers
# end

# arr = [1, 2, 3, 4, 5]
# double_numbers!(arr)
# p arr
# -------------------------------------------------------------------------------------------------------------------



### Write a method that doubles an integer if it has an odd index, does not mutate the caller ###

# def double_odd_indices(numbers)
#   doubled_numbers = []
  
#   numbers.each_with_index do | num, idx |
#     num *= 2 if idx.odd?
#     doubled_numbers << num
#   end
  
#   doubled_numbers
# end

# arr = [1, 2, 3, 4, 5]
# p double_odd_indices(arr)
# -------------------------------------------------------------------------------------------------------------------



### Modify the select_fruit method to be more flexible and select anything ###

# def general_select(produce_hash, selection_criteria)
#   produce_hash.select { |k, v| v == selection_criteria }
# end

# p general_select(produce, 'Vegetable')
# -------------------------------------------------------------------------------------------------------------------



### Modify the double_numbers method to multiply by any number

### Write a method that doubles the integers in an array and mutates the caller ###

# def double_numbers!(numbers, operator)
# tick = 0  
  
#   until tick == numbers.size
#     numbers[tick] *= operator
#     tick += 1
#   end
  
#   numbers
# end

# arr = [1, 2, 3, 4, 5]
# double_numbers!(arr, 5)
# p arr
# -------------------------------------------------------------------------------------------------------------------