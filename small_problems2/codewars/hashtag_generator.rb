=begin
--------------------------PROMPT------------------------------------
It must start with a hashtag (#).

-----------------------------INPUT----------------------------------
Single string

----------------------------OUTPUT----------------------------------
The input string formatted into a hashtag

-----------------------------RULES----------------------------------
Explicit:
- There are no spaces between words in the output
- All words have first letter capitalized
- Return false if final result > 140 characters
- Return false if the input or result is empty

Implicit:

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
If input is empty string, return false
Split string into words, iterate through words
  - Capitalize every word, join back together
Prepend string with #.
Return false if string lenth > 140
Return string
=end

def generateHashtag(str)
  return false if str.empty?

  hashtag = str.split.map!(&:capitalize).join

  return false if hashtag.empty?
  
  hashtag.prepend('#')
  
  return false if hashtag.length > 140
  hashtag
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do we have a hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false