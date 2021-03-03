=begin
----------------------------PROMPT----------------------------------
Write a method that takes two strings as arguments and determines if there is a substring that appears in both strings. Return true if a substring exists that occurs in both strings, false otherwise. Only consider substrings that are longr than one letter.

-----------------------------INPUT----------------------------------
Two strings as arguments

----------------------------OUTPUT----------------------------------
Boolean, true if a common substring exists between the two strings, false otherwise

-----------------------------RULES----------------------------------
Explicit:
- Ignore substrings that are one letter

Implicit:
- Ignore case

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
Ensure that both strings are lowercased during comparison
Write method that returns an array of all substrings of a string
  - Initialize empty substring array
  - Split string into array of characters, iterate through array
      - For each character, loop up to the last element of the array
          - Push each sub-string into the substring array
  - Remove all elements that are one character long
  - Return substring array

Write method that compares substring arrays
  - Run all substrings method for each string, save into combined array
  - Return true if the count of any element is > 2
      - Iterate through array and select an element if its count > 2
=end

def all_substrings(str)
  substrings = []
  str.each_char.with_index do |char, idx|
    (str.chars.find_index(char)).upto(str.length - 1) do |n|
      substrings << str[idx..n]
    end
  end
  substrings.keep_if { |str| str.length > 1 }
end

def substring_test(str1, str2)
  compare = all_substrings(str1.downcase) + all_substrings(str2.downcase)
  
  !(compare.select { |str| compare.count(str) > 1 }).empty?
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true