#-1
# loop do
#   puts 'Just keep printing...'
#   break
# end


#-2
# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
  
#   break
# end

# puts 'This is outside all loops.'


#-3
# iterations = 1

# 5.times do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
# end


#-4
# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end


#-5
# say_hello = true
# tick = 0

# while say_hello
#   puts 'Hello!'
#   tick += 1
#   say_hello = false if tick == 5
# end


#-6
# numbers = []

# while numbers.length < 5
#   numbers << rand(0..99)
# end

# puts numbers


#-7
# count = 1

# until count > 10
#   puts count
#   count += 1
# end


#-8
# numbers = [7, 9, 13, 25, 18]
# tick = 0

# until tick == numbers.length
#   puts numbers[tick]
#   tick += 1
# end


#-9
# for i in 1..100
#   puts i if i.odd?
# end


#-10
# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for name in friends
#   puts "Hello, #{name}!"
# end