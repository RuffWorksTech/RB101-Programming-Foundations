=begin
----------------------------PROMPT----------------------------------
Write a method to find the longest common prefix string amongst an array of strings.

-----------------------------INPUT----------------------------------
- Array of single-word strings

----------------------------OUTPUT----------------------------------
- String of the longest prefix that is common between the strings

-----------------------------RULES----------------------------------
Explicit:
- If there is no common prefix, return an empty string ''
- All given inputs are in lowercase letters a-z.

Implicit:

-------------------------DATA STRUCTURES----------------------------
String -> Array

----------------------------ALGORITHM-------------------------------
Intialize empty string for common prefix
Loop the same number of times as the size of the input array
    - Inialize an empty sub-array
    - Push the current letter matching the index of the current iteration of each word into the sub-array
    - Check if all elements in the sub array are the same
        - If they are same, push it into the common prefix variable
Return common prefix variable

=end

def common_prefix(arr)
  common = ''
  (arr.min.length).times do |n|
    sub_arr = []
    arr.each { |word| sub_arr << word[n] }
    common << sub_arr.first if sub_arr.all?(sub_arr.first)
    break unless sub_arr.all?(sub_arr.first)
  end

  common
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["dungeons", "dragons"]) == "d"
p common_prefix(["throne", "throne"]) == "throne"