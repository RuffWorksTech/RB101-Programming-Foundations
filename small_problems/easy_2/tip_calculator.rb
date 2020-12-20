### Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.###

# Input:
# - Two positive integers, a bill amount and a tip percentage

# Output:
# - Two printed lines:
#     - Tip amount
#     - Bill total (bill + tip)
    
# Rules:
# - Inputs are whole integers, no floats
# - Output has dollar signs

# EXAMPLE:
# => What is the bill? 200
# => What is the tip percentage? 15

# => The tip is $30.0
# => The total is $230.0

# DATA STRUCTURE:
# - Integers

# ALGORITHM:
# - Prompt for bill amount
# - Prompt for tip percentage (whole integer)
# - Calculate tip
# - Add tip to bill for total
# - Print out both values

print "What's the bill? "
bill = gets.chomp

print "What's the tip percentage? "
tip_pctge = gets.chomp

tip = (bill.to_f * (tip_pctge.to_f / 100)).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{bill.to_f + tip}"