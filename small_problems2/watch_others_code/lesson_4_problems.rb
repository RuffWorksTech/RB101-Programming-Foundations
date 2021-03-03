#-1
# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

# => [1, 2, 3]


#-2
# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

# => 2


#-3
# [1, 2, 3].reject do |num|
#   puts num
# end

# => []


#-4
# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end

# => { "a" => 'ant', "b" => 'bear', "c" => 'cat' }


#-5
# hash = { a: 'ant', b: 'bear' }
# hash.shift

# => [:a, "ant"]


#-6
# ['ant', 'bear', 'caterpillar'].pop.size

# => 11


#-7
# [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end

# => 1
# => true


#-8
# arr = [1, 2, 3, 4, 5]
# arr.take(2)

# nope => [1, 2]


#-9
# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

# => [ nil, "bear" ]


#-10
# [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end

# => [1, nil, nil]
# --------------------------------------------------------------------------------------

### ADDITIONAL PRACTICE ###

#-1 Turn into hash
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# hsh = {}
# flintstones.each_with_index do |name, idx|
#   hsh[name] = idx
# end

# p hsh


#-2 Add up ages
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.sum


#-3 Remove > age 100
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.delete_if { |_, age| age > 100 }


#-4 Select the minimum age
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min


#-5 Find the index of the first name that starts with "Be"
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.index { |name| name.start_with?(/Be/) }


#-6 Shorten all names to the first three letters
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.map! { |name| name[0, 3] }


#-7 Create hash that expresses the frequency of each letter
# statement = "The Flintstones Rock"

# hsh = {}
# statement.delete(' ').chars.sort.each do |char|
#   hsh[char] = statement.chars.count(char)
# end

# p hsh


#-8 Modify array while iterating. What will it output?
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# => 1
# => 3

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# => 1
# => 2


#-9 Titleize the string
# words = "the flintstones rock"
# p words.split.map(&:capitalize).join(' ')


#-10 Add an additional key "age_group" (kid, adult, senior)
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |_, sub_hsh|
#   sub_hsh["age_group"] = case sub_hsh["age"]
#   when 0..17 then "kid"
#   when 18..64 then "adult"
#   else "senior"
#   end
# end

# puts munsters


#-11