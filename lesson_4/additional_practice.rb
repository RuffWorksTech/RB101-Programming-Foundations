#-1
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones_hash = {}

# flintstones.each_with_index do |name, idx|
#   flintstones_hash[name] = idx
# end

# p flintstones_hash



#-2
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.sum



#-3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# # ages.delete_if { |_, v| v >= 100 }
# p ages



#-4
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.min



#-5
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.index { |name| name.start_with?("W") }



#-6
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! { |name| name.slice(0, 3) }
# p flintstones



#-7
# statement = "The Flintstones Rock"
#initialize empty hash
#convert string into array, remove space characters
#perform an iteration
# => for each iteration, grab the character and assign it as a key
# => for the value, use the .count method to count how many times it occurs in the array

# frequency = {}
# statement.delete(' ').chars.each do |letter|
#   frequency[letter] = statement.chars.count(letter)
# end

# p frequency



#-8
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end
# # => will print 1, 2, 3, 4
# # => crap. will print 1, 3 because the .each goes to the second element, and because shift(1) removes the first element, 3 is then the second element in the next loop

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end
# => will print 1, 2



#-9
# words = "the flintstones rock"
# words.split.map { |word| word.capitalize }.join(' ')



#-10
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# #iterate through top-level hash
# # =>iterate through nested hashes
# #   =>case statement for age range
# #   =>0-17 = "kid"
# #   =>18-64 = "adult"
# #   =>65+ = "senior"
# #   =>end
# # =>add key "age_group"; add value that is the result of the case statement

# munsters.each_value do |details|

#   group = case details["age"]
#           when (0..17) then group = 'kid'
#           when (18..64) then group = 'adult'
#           else group = 'senior'
#           end
  
#   details["age_group"] = group
# end