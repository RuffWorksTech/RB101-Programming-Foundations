### Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer. ###

# Input:
# - A single integer

# Output:
# - A 4-pointed diamond in an n x n grid (n is the input integer)

# Rules:
# - The given integer will be odd

# ALGORITHM:
# - Loop 1 to the given number
#     - Print out a single star character centered in the width of the given integer
# - Loop ( the given number - 1 ) to 1
#     - Print out a single star character centered in the width of the given integer

def diamond(num)
  star = '*'
  
  1.upto(num) do |n|
    next if n.even?
    puts (star * n).center(num)
  end
  
  (num - 1).downto(1) do |n|
    next if n.even?
    puts (star * n).center(num)
  end
end


diamond(1)

diamond(3)

diamond(9)