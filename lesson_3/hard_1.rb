#-1
if false
  greeting = “hello world”
end

greeting #error


#-2
greetings = { a: 'hi' } #creates a hash with one key/value pair
informal_greeting = greetings[:a] #=> 'hi'
informal_greeting << ' there' 

puts informal_greeting  #  => "hi there"
puts greetings # => { :a => 'hi' } WRONG. it's => { :a => 'hi there' }


#-3
=begin
#A)
def mess_with_vars(one, two, three) # reassignment, does not modify
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
=end


#-4
def is_an_ip_number?(num)
  num.to_i.between?(0,255)
end


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  
  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true
end

my_ip = '12.3.40.susan'
p dot_separated_ip_address?(my_ip)