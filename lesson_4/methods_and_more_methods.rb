#-1
# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end
# => [1, 2, 3] because select evaluates the return value of the block.


#-2
# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end
# => if an element returns true, a virtual counter is iterated. The final tally is outputted as an integer.


#-3
# [1, 2, 3].reject do |num|
#   puts num
# end
# => because puts returns nil, each iteration is added to the new collection. Returns [1, 2, 3]


# #-4
# hash = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end
# # => returns an error? Not enough arguments for the hash?
# # => Ah I see now. value[0] is the first element in the value string and they are using that as their key.


# #-5
# hash = { a: 'ant', b: 'bear' }
# hash.shift
# # => will return [:a, 'ant']


# #-6
# ['ant', 'bear', 'caterpillar'].pop.size
# # => will return 11. Pops 'caterpillar' from the array and returns the size of it.


# #-7
# [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end
# # => will return `true`. any? checks if any element returns true to a condition provided. The condition in the block is num.odd?, so after the first iteration and finding 1, the block and thus the method returns true.


# #-8
# arr = [1, 2, 3, 4, 5]
# arr.take(2)
# # => .take returns the first n elements of an array. Non-destructive.


#-9
# hash = { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

# p hash
# => my guess is that it will return [false, 'bear'] because it returns false on 'ant' because it is < 3, then it returns 'bear' (per the if statement, because 'bear is > ').
# => `nil` instead of `false`. Guess the if statement returns nil if none of the conditions evaluate as `true`


#-10
# [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end
# # => [1, nil, nil]