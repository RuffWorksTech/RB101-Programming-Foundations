=begin
----------------------------PROMPT----------------------------------
Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

-----------------------------INPUT----------------------------------
Single string

----------------------------OUTPUT----------------------------------
Boolean, true if all parentheses are balanced, false otherwise

-----------------------------RULES----------------------------------
Explicit:
- All parentheses must be balanced. Balanced == "()", balanced != ")("

Implicit:
- Parentheses can be anywhere in the string. 
- If first parentheses is '(', it is always false

-------------------------DATA STRUCTURES----------------------------
String -> Arr

----------------------------ALGORITHM-------------------------------
Use pair_character method to determine which character is used
Remove all alphabetic characters

Initialize array for parentheses
Initialize balance variable = 0
Split string into characters, iterate through characters
    - If character is a pair character, push it into the array
If first element is '(', return false
Evaluate array
    - If element is '(', increment balance variable += 1
    - If element is ')', decrement balance variable -= 1
Check if balance variable == 0
=end

def pair_char?()


def balanced?(str)
  balance = 0
  
  parenth = str.chars.each_with_object([]) do |char, arr|
    arr << char if char =~ /(\(|\))/
  end
  
  return false if parenth.first == ')' || parenth.last == '('
  
  parenth.each do |el|
    case el
    when '(' then balance += 1
    when ')' then balance -= 1
    end
  end
  balance == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false