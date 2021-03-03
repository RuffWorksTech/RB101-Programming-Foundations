=begin
----------------------------PROMPT----------------------------------
Write a method to determine if a word is a palindrome without using the reverse method

-----------------------------INPUT----------------------------------
Single string, one word

----------------------------OUTPUT----------------------------------
Boolean, true if word is a palindrome, false otherwise

-----------------------------RULES----------------------------------
Explicit:
- Cannot use the reverse method

Implicit:

-------------------------DATA STRUCTURES----------------------------
String -> Array

----------------------------ALGORITHM-------------------------------
Initialize empty array
Split string into characters, iterate through characters
    - Take element of character array, prepend it to the new array
Save result of iteration to new string
Check if reversed string is equal to input string

=end

def palindrome?(str)
  reversed = []
  
  str.each_char do |char|
    reversed.prepend(char)
  end
  reversed.join == str
end

p palindrome?('abcddcba') #== true
p palindrome?('abcdecba') #== false
p palindrome?('135797531') #== true
p palindrome?('') #== true
p palindrome?('123456') #== false