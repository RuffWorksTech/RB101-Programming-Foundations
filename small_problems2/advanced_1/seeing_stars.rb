=begin
----------------------------PROMPT----------------------------------
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method.

-----------------------------INPUT----------------------------------
Single integer

----------------------------OUTPUT----------------------------------
Printout of an 8-pointed star

-----------------------------RULES----------------------------------
Explicit:
- The smallest such star you need to handle is a 7x7 grid.
- Input number will be odd

Implicit:

-------------------------DATA STRUCTURES----------------------------
Array

----------------------------ALGORITHM-------------------------------

Initialize array that will hold each line of stars
Put an n * star line into the array
Loop the same number of times as half of the input integer
  - Place a star into a string
  - Place space characters into the string (same amount as current loop iteration)
  - Place a start into the string
  - Place space characters into the string (same amount as current loop iteration)
  - Place a star into the string
  - Prepend string to front of array and end of array
  
Loop through lines array
  - Print out each line centered on n
=end

def star(n)
  lines = []
  lines << '*' * n 
  
  (n / 2).times do |iter|
    str = '*'
    2.times do
      str << ' ' * iter
      str << '*'
    end
    lines.prepend(str)
    lines << str
  end
  
  lines.each { |line| puts line.center(n) }
end

star(7)
star(9)