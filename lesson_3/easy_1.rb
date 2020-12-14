=begin

#-1 Will print out 1\n 2\n 3\n 4\n

#-2
    1. != is the "not equals" operator. Use with conditionals.
    2. If `!` is before something, it returns the opposite boolean value of what it actually is.
    3. If `!` is after something, it commonly causes methods to become destructive, but not in all instances.
    4. If `?` is before something, it will return the ASCII character code.
    5. If `?` is after something, it causes a boolean opearation that will return a boolean value.
    6. If `!!` is before something, it returns the truthiness or the falseness of the thing it is attached to.

=end

#-3
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.gsub!('important', 'urgent')

#-4
numbers = [1, 2, 3, 4, 5]
p numbers.delete_at(1)  #deletes the value at index 1
p numbers.delete(1)   #deletes one value from the array, in this case just the first one

#-5
p 42.between?(10,100) #or
p (10..100).cover?(42)

#-6
famous_words = "seven years ago..." #or
puts "Four score and " + famous_words #or
puts "Four score and #{famous_words}" #or
puts "Four score and " << famous_words #or
puts famous_words.prepend("Four score and ")

#-7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones.flatten!

#-8
flintstones_hash = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones_hash.assoc("Barney")