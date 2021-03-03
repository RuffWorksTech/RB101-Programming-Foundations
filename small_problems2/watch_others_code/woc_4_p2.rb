=begin
----------------------------PROMPT----------------------------------
Write a method scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.


-----------------------------INPUT----------------------------------
Two strings as arguments

----------------------------OUTPUT----------------------------------
Boolean, true if a portion of str1 can be rearranged to match str2, false otherwise

-----------------------------RULES----------------------------------
Explicit:
- Lowercase letters will be used
- Do not worry aboug digits or punctuation

Implicit:

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
Split str1 into array of characters, assign to new variable
Iterate through str2
  - If character is in str1 array, remove it
  - If it is not, return false
Return true

=end

def scramble(str1, str2)
  available = str1.chars
  
  str2.each_char do  |char|
    if available.include?(char)
      available = available.join.sub!(char, '').chars
    else
      return false
    end
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true