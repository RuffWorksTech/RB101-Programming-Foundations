### Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case. ###

# Input:
# - Single string

# Output:
# - New string that is the argument string in which every other character is capitalized

# Rules:
# - Non-alphabetic characters now do NOT count in whether a characters is uppercase or lowercase

# EXAMPLES:
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# ALGORITHM:
# - Initialize an empty string
# - Initizlize a counter = 0
# - Split string into an array
# - Iterate through array
#     - If character is non-alphabetic, skip
#     - Else if counter is odd, uppercase it and add to empty string, increment counter += 1
#     - Else if counter is even, lowercase it and add to empty string, increment counter += 1
# - Return string



def staggered_case(str)
  staggered = ''
  count = 0
  str.each_char do |char|
    if char.match?(/[[:alpha:]]/)
      count.even? ? staggered << char.upcase : staggered << char.downcase
      count += 1
    else
      staggered << char
    end
  end
  staggered
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'