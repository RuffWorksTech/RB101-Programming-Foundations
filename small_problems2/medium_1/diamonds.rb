=begin
----------------------------PROMPT----------------------------------
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method.

-----------------------------INPUT----------------------------------
Single integer (n)

----------------------------OUTPUT----------------------------------
A series of printed lines that shows a 4-pointed diamon in an n x n grid

-----------------------------RULES----------------------------------
Explicit:
  - You may assume that the argument will always be an odd integer.

Implicit:
  - Each subsequent row of stars has n + 2 stars (or n - 2)

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
1. Loop the same number of times as the input integer
    - Skip even iterations
    - Create string of stars with one start
    - Print stars centered on n
    - Increment start string by "**"
2. 
=end

def diamond(num)
  1.upto(num) do |n|
    next if n.even?
    puts ('*' * n).center(num)
  end
  
  (num - 2).downto(1) do |n|
    next if n.even?
    puts ('*' * n).center(num)
  end
end

diamond(1)
diamond(3)
diamond(9)