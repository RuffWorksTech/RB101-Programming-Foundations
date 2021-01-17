### Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs. Note that balanced pairs must each start with a (, not a ). ###

# Input:
# - Single string

# Output:
# - Boolean (true if all parentheses in the string are pairs)

# Rules:
# - Balanced pairs must each start with '('

# DATA STRUCTURES:
# - Array

# ALGORITHM:
# - Initialize empty balance array
# - Split string into characters, iterate
#     - If a character is '(', push it into the balance array
#     - If a character is a ')', pop a '(' from the balance array
# - If the array is empty, the string is balanced

def balanced?(str)
  balance = 0
  str.chars.each do |char|
    balance += 1 if char == '('
    balance -= 1 if char == ')'
    break if balance < 0
  end
  balance.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false