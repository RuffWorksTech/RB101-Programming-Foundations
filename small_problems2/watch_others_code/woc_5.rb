=begin
----------------------------PROMPT----------------------------------
Find the length of the longest substring int he given string that is the same in reverse.

Example:
- Input: "I like racecars that go fast"
- Output: 7

-----------------------------INPUT----------------------------------
- Single string

----------------------------OUTPUT----------------------------------
- Length of the longest palindrome

-----------------------------RULES----------------------------------
Explicit:
- Return 0 for emtpy strings.

Implicit:
- All alphabetic inputs will be lowercase (a-z)

-------------------------DATA STRUCTURES----------------------------
String -> Array

----------------------------ALGORITHM-------------------------------
Initialize emtpy array that will contain all substrings
Iterate through each character in the string
    - Loop until the end of the string
        - Take the current character up to the last character and push it into the array as a substring if it is a palindrome
Return the length of the longest palindrome in the array

=end

def longest_palindrome(str)
  return 0 if str.length == 0
  palindromes = []
  
  str.each_char.with_index do |char, idx|
    idx.upto(str.length - 1) do |n|
      palindromes << str[idx..n] if str[idx..n] == str[idx..n].reverse
    end
  end
  palindromes.max { |a, b| a.length <=> b.length }.length
end

p longest_palindrome('') == 0
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9