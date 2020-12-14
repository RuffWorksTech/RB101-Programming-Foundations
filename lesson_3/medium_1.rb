#-1
10.times { |n| puts (' ' * n) + "The Flintstones Rock!" }

#-2
puts "the value of 40 + 2 is #{40 + 2}"

#-3
def factors(number)
  divisor = number
  factors = []
    while divisor > 0
      factors << number / divisor if number % divisor == 0 #this means there is no remainder
      divisor -= 1
    end
  factors #this will return the `factors` array out of the method
end

#-4
#Only the << will work. The second is assignment only which does not modify the original array.

#-5
#The `limit` variable was not passed into the `fib` method and thus is inaccessible.

#-6
#34

#-7
#My original answer was no because .each was used, but turns it out it was yes. Still don't understand this one.

#-8
#paper

#-9
#no