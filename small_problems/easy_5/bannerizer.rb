### Write a method that will take a short line of text, and print it within a box. ###

# Input:
# - Single string

# Output:
# - Original string in a box

# Rules:
# - Text is cushioned by one space on either end
# - Top and bottom border are dashes capped with + marks
# - Left and right borders are created with the | character

# EXAMPLES:
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# DATA STRUCTURES:
# - String

# ALGORITHM:
# - Pad original string with two spaces on either end

def print_in_box(str)
  length = str.size
  dashed_line = "+#{'-' * (length + 2)}+"
  empty_line = "|#{' ' * (length + 2)}|"
  puts dashed_line
  puts empty_line
  puts "| #{str} |"
  puts empty_line
  puts dashed_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')