=begin
----------------------------PROMPT----------------------------------
You will be given a number and you will need to return it as a string in Expanded Form.

NOTE: All numbers will be whole numbers greater than 0.

-----------------------------INPUT----------------------------------
- Single integer

----------------------------OUTPUT----------------------------------
- Single string, the integer in "expanded form"

-----------------------------RULES----------------------------------
Explicit:
- All inputs will be > 0

Implicit:
- Numbers are separated by '+'

-------------------------DATA STRUCTURES----------------------------
Array

----------------------------ALGORITHM-------------------------------
Iterate through digits
  - If number is not 0, push it into the array with the appropriate amount of 0s
      - 

=end

def expanded_form(n)
  numbers = n.digits.each_with_index.with_object([]) do |(num, idx), arr|
    if num != 0
      arr.prepend((num.to_s + ('0' * idx)).to_i)
    end
  end
  numbers.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(462) == '400 + 60 + 2'
p expanded_form(70304) == '70000 + 300 + 4'