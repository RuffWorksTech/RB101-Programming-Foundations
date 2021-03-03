=begin
----------------------------PROMPT----------------------------------
Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it.  You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

-----------------------------INPUT----------------------------------
File with text

----------------------------OUTPUT----------------------------------
The same file with text, but with the noted adjectives, nouns, verbs, and adverbs replaced with random words of that type

-----------------------------RULES----------------------------------
Explicit:

Implicit:
- Words to be replaced will be denoted with %{<type of word>}
- Input text contains newline characters and should be returned with the same structure

-------------------------DATA STRUCTURES----------------------------
Word container: hash
Input text: nested array (to separate lines of text)

----------------------------ALGORITHM-------------------------------
Initialize hash containing random words for nouns, adjectives, verbs, and adverbs
Read file, remove indicators for words to replace, split into lines
Iterate through hash
    - If word is trigger word, replace with random trigger word
Return string
=end

WORDS = { adjective: %w(quick lazy sleepy ugly),
          noun: %w(fox dog head leg),
          verb: %w(jumps lifts bites licks),
          adverb: %w(easily lazily noisily excitedly)
        }

def madlibs(file)
  madlibbed = File.read(file).gsub!(/(\%|\{|\})/, '').split(/\n/).each_with_object([]) do |line, arr|
    WORDS.each do |k, v|
      line.gsub!(/\b#{k.to_s}\b/, v.sample)
    end
  arr << line
  end
  puts madlibbed.join("\n")
end

madlibs("text.txt")