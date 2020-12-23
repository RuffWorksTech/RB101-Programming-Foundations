### Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number. ###

# Input:
# - Single integer as an argument

# Output:
# - Single string that is the century number

# Rules:
# - Begins with century number and ends with st, nd, rd, or th as appropriate for that number

# EXAMPLES:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# DATA STRUCTURES:
# - Integers

# ALGORITHM:
# - Make variable the quotient of integer (century year)
# - Make variable the remainder of integer (determine what century)
#   - If remainer > 0, increment century year by 1
# - Depending on final number, add appropriate ending
# - 1 - st
# - 2 - nd
# - 3 - rd
# - 4-20 - th
# - 21 - st
# - 22 - nd
# - 23 - rd
# - 24 - th
# ...


def century(year)
  century = year / 100
  remainder = year % 100
  
  remainder > 0 ? century += 1 : century
  
  "#{century}" + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  
  case century % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'