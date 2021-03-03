=begin
----------------------------PROMPT----------------------------------
Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

Example 1:
- Input: "abab"
- Output: true
- Explanation: It's the substring "ab" twice

Example 2:
- Input: "aba"
- Output: false

-----------------------------INPUT----------------------------------
- Single string

----------------------------OUTPUT----------------------------------
- Boolean

-----------------------------RULES----------------------------------
Explicit:
- Input string will consist of lowercase English letters only
- Return true if the string can be constructed by taking a substring and appending multiple copies of the substring together

Implicit:
- Multiple implies at least two copies

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
Loop the same number of times that the string is long
    - Take first element of string, multiply it to be the same length as the input string
    - Return true if the two strings match
Return false
=end

def repeated_substring_pattern(str)
  1.upto(str.length / 2) do |n|
    return true if str[0, n] * (str.length / n) == str
  end
  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("ababab") == true