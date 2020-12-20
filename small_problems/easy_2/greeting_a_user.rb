### Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user. ###

# Input:
# - A single string that is a name.

# Output:
# - A greeting that includes the inputted name

# Rules:
# - If the user includes an exclamation point at the end of their name, the greeting is put in all caps and 'WHY ARE WE SCREAMING?' added to the end

# DATA STRUCTURES:
# - Strings

# ALGORITHM:
# - Prompt user for a name
# - Check the name
#     - If the user included an exclamation at the end of their name
#         - Output greeting in all caps and include 'WHY ARE WE SCREAMING??' to the end
#     - If the name is normal, output a simple greeting

print "What is your name? "
name = gets.chomp

if name.end_with?('!')
  puts "HELLO #{name.upcase}!! WHY ARE WE SCREAMING??"
else
  puts "Hello #{name}."
end