=begin
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.
=end


# Input:
# - Single string

# Output:
# - List of all substrings of a string that are palindromic

# Rules:
# - Any substring that consist of the same sequence of characters forwards as it does backwards is palindromic, even if the sequence is only two characters
# - List should be ordered in the same sequence as the substrings in the string
# - Duplicate palindromes are not removed.
# - Use the substrings method from the previous exercise
# - Palindromes are case-sensitive
# - Single characters are not palindromes

# EXAMPLES:
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# ALGORITHM:
# - Run the substrings method from the previous exercise
# - Iterate through array
#   - Remove all elements that are one character in size
#   - Remove all elements that are not palindromes
# - Return array

def leading_substrings(str)
  substrings = []
  str.each_char.with_index do |char, idx|
    substrings << str[0..idx]
  end
  substrings
end


def substrings(str)
  all_substrings = []
  str.each_char.with_index do |char, idx|
    all_substrings << leading_substrings(str[idx..-1])
  end
  all_substrings.flatten
end


def palindromes(str)
  arr = substrings(str).delete_if { |sub| sub.size == 1 }
  arr.keep_if { |sub| sub == sub.reverse }
end

# OR

def palindromes2(str)
  substrings(str).select { |sub| sub == sub.reverse && sub.size > 1 }
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [ 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada', 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did','-madam-', 'madam', 'ada', 'oo' ]
p palindromes('knitting cassettes') == [ 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt' ]