#-1
# File::path returns the string representation of the path (class method, called on the class)
# File#path returns the pathname used to create file as a string. (instance method, called on objects)



#-2
# require 'date'

# puts Date.civil
# puts Date.civil(2016)
# puts Date.civil(2016, 5)
# puts Date.civil(2016, 5, 13)

# => -4712-01-01
# => 2016-01-01
# => 2016-05-01
# => 2016-05-13



#-3
# def my_method(a, b = 2, c = 3, d)
#   p [a, b, c, d]
# end

# my_method(4, 5, 6)

# => will print [4, 5, 3, 6]. 4 is assigned to a, 6 is assigned to d, then 5 is assigned to b, and c uses its default argument.



#-4
# a = [1, 4, 8, 11, 15, 19]

# p a.bsearch { |n| n > 8 }



#-5
# a = %w(a b c d e)
# puts a.fetch(7)
# puts a.fetch(7, 'beats me')
# puts a.fetch(7) { |index| index**2 }

# => IndexError
# => beats me
# => 49



#-6
# 5.step(to: 10, by: 3) { |value| puts value }

# => 5
# => 8



#-7
# s = 'abc'
# puts s.public_methods.inspect
# => s.publich_methods(false).inspect



#-8
# a = [5, 9, 3, 11]
# puts a.min
# => a.min(2)



#-9
# require 'yaml'
# MESSAGES = YAML.load_file('calculator_messages.yml')
# https://ruby-doc.com/stdlib-2.5.2/libdoc/psych/rdoc/Psych.html