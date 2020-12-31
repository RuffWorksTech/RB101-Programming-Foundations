### Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right. ###

# Input:
# - A positive integer

# Output:
# - A right triangle whose sides have n stars

# Rules:
# - Hypotenuse should have one end at the lower-left of the triangle, the other end at the upper-right

# EXAMPLES:
# triangle(5)

#     *
#   **
#   ***
# ****
# *****

# triangle(9)

#         *
#       **
#       ***
#     ****
#     *****
#   ******
#   *******
# ********
# *********


# ALGORITHM:
# - Initialize star_chars = '*'
# - Loop given integer of times
#     - Right justify length of given integer
#     - Print star
#     - Shovel another star onto star_chars

def triangle(int)
  star_chars = '*'
  int.times do
    puts star_chars.rjust(int, ' ')
    star_chars << '*'
  end
end

triangle(5)
triangle(9)


#My original idea that works
# def triangle(int)
#   num_spaces = int - 1
#   num_stars = int - num_spaces
#   int.times do
#     print " " * num_spaces
#     puts "*" * num_stars
#     num_spaces -= 1
#     num_stars += 1
#   end
# end
