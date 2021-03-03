=begin
----------------------------PROMPT----------------------------------
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

-----------------------------INPUT----------------------------------
- Single string

----------------------------OUTPUT----------------------------------
- Hash containing 3 keys: lowercase, uppercase, and neither. Their percentages of the string will be their values.

-----------------------------RULES----------------------------------
Explicit:
- Input string will always contain at least one character

Implicit:
- Percentages can be whole numbers or floats

-------------------------DATA STRUCTURES----------------------------
String -> Array -> Hash

----------------------------ALGORITHM-------------------------------
Create hash containing lowercase, uppercase, and neither
Split string into characters, iterate through characters
    - If a character is A-Z, increment uppercase value
    - If a character is a-z, increment lowercase value
    - Increment neither variable by all other characters
Perform operations in hash to convert counts to percentages
    - Divide each count by the total number of string characters
Create hash with lowercase, uppercase, and neither as symbols and their percentages as values, return

=end

def letter_percentages(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    case char
    when /[a-z]/ then hsh[:lowercase] += 1
    when /[A-Z]/ then hsh[:uppercase] += 1
    else hsh[:neither] += 1
    end
  end
  hsh.each_key do |k|
    hsh[k] = ( hsh[k] / str.size.to_f) * 100
    hsh[k] = hsh[k].round if hsh[k] == hsh[k].round
  end
  hsh
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }