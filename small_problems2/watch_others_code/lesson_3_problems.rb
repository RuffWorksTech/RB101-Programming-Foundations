### EASY 1 ###
#-1

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# Will print out 1, 2, 2, 3


#-2
# ! is the bang operator. Typically used when a method will mutate the caller.
# ? is the typically an indicator of an evaluation. Should return a Boolean

# != is the NOT operator, "not equals"
# ! before something returns the opposite Boolean
# ! after something usually makes the method mutating
# ? before something is used as the ternary operator for if..else
# ? after something usually indicates evaluation
# !! before something turns it into its Boolean equivalent


#-3
# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.gsub!(/important/,'urgent')


#-4
# numbers = [1, 2, 3, 4, 5]
# p numbers.delete_at(1) #Deletes the element at index 1 (2)
# p numbers
# p numbers.delete(1) #Deletes the argument number of elements from the beginning of the array (1)
# p numbers


#-5
# p (10..100).cover?(42)


#-6
# famous_words = "seven years ago..."
# p "Four score and " << famous_words
# p "Four score and " + famous_words


#-7
# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# p flintstones.to_a[2]
# p flintstones.assoc("Barney")
# ---------------------------------------------------------------------------------------------------------------


### MEDIUM 1 ###

#-1
# 10.times { |n| puts (' ' * n) + 'The Flintstones Rock!' }


#-2
# puts "the value of 40 + 2 is #{(40 + 2)}"


#-3
# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end


#-4
# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# Yes, there is a difference. They return the same thing, but the first method will mutate the caller.


#-5
# limit = 15

# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, limit)
# puts "result is #{result}"

# The limit variable is not passed into the method. Undefined variable 'limit'


#-6
# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# = > 34


#-7
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)

# Yes. Although the #each method is only an iterator, there are two lines of indexed assignment within its block. Indexed asignment is mutating.


#-8
# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# "paper"


#-9
# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# => no
# ---------------------------------------------------------------------------------------------------------------


### MEDIUM 2 ###

#-1
# def fun_with_ids
#   a_outer = 42

#   a_outer_id = a_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."

#   1.times do
#     a_outer_inner_id = a_outer.object_id
#     puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."

#     a_outer = 22
#     puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."

#     a_inner = a_outer
#     a_inner_id = a_inner.object_id
#     puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
#   end

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
# end

# fun_with_ids


#-2
# def fun_with_ids
#   a_outer = 42

#   a_outer_id = a_outer.object_id
#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."

#   an_illustrative_method(a_outer, a_outer_id)
#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
# end


# def an_illustrative_method(a_outer, a_outer_id)

#   puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."

#   a_outer = 22
#   puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."

#   a_inner = a_outer
#   a_inner_id = a_inner.object_id
#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
# end

# fun_with_ids


#-3
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# => "pumpkins"
# => ["pumpkins", "rutabaga"]


#-4
# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# => "pumpkinsrutabaga"
# => ["pumpkins"]


#-5
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


#-6
# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# Refactored to:

# def color_valid(color)
#   color == "blue" || color == "green"
# end

# p color_valid("blue")
# ---------------------------------------------------------------------------------------------------------------


### HARD 1 ###

#-1
# if false
#   greeting = "hello world"
# end

# p greeting

# => nil


#-2
# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings

# => { a => 'hi there' }


#-3
#A)
# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# => 'one'
# => 'two'
# => 'three'

# B)
# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# => 'one'
# => 'two'
# => 'three'

#C)
# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# => 'two'
# => 'three'
# => 'one'


#-4
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

# Refactored to:
# def is_an_ip_number?(num)
#   (0..255).cover?(num.to_i)
# end

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
  
#   return false if dot_separated_words.size != 4
  
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word)
#   end
#   true
# end

# p dot_separated_ip_address?("192.168.1.1")
# p dot_separated_ip_address?("1.2.3")
# p dot_separated_ip_address?("1.2.3.4.5")
# p dot_separated_ip_address?("1.2.3.604")