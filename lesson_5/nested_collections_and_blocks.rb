#-1
# arr = ['10', '11', '9', '7', '8']
# p arr.map(&:to_i).sort.reverse


#-2
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p books.sort_by { |book| book[:published] }


#-3
# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p arr1[2][1][3]
# p arr2[1][:third][0]
# p arr3[2][:third][0][0]
# p hsh1['b'][1]
# p hsh2[:third].key(0)


#-4
# arr1 = [1, [2, 3], 4]
# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# hsh1 = {first: [1, 2, [3]]}
# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# arr1[1][1] = 4
# p arr1
# arr2[2] = 4
# p arr2
# hsh1[:first][2][0] = 4
# p hsh1
# hsh2[['a']][:a][2] = 4
# p hsh2


#-5
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# arr = munsters.each_value.select { |v| v['gender'] == 'male' }
# p arr.map { |n| n['age'] }.sum


#-6
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
# end


#-7
# a = 2
# b = [5, 8]
# arr = [a, b]    # => [2, [5, 8]]

# arr[0] += 2     # => [4, [5, 8]]
# arr[1][0] -= a  # => [4, [3, 8]]

# a = 2
# b = [3, 8]


#-8
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each_value do |words|
#   words.each do |word|
#     word.chars.each { |letter| puts letter if letter =~ /(a|e|i|o|u)/ }
#   end
# end


#-9
# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# p arr.map { |sub_arr| sub_arr.sort.reverse }


#-10
# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr2 = arr.map do |hsh|
#   new_hsh = {}
#   hsh.each { |k, v| new_hsh[k] = v + 1 }
#   new_hsh
# end

# p arr2


#-11
# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr2 = arr.map do |sub_arr|
#   sub_arr.select { |n| n % 3 == 0 }
# end

# p arr2


#-12
# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# hsh = {}
# arr.each do |sub_arr|
#   hsh[sub_arr.first] = sub_arr.last
# end

# puts hsh


#-13
# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# arr2 = arr.sort_by do |sub_arr|
#   sub_arr.select { |n| n.odd? }
# end

# p arr2


#-14
# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# arr = hsh.map do |_, v|
#   if v[:type] == 'fruit'
#     v[:colors].map(&:capitalize)
#   elsif v[:type] == 'vegetable'
#     v[:size].upcase
#   end
# end

# p arr


#-15
# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# arr2 = arr.select do |hsh|
#   hsh.all? do |_, v|
#     v.all? { |n| n.even? }
#   end
# end

# p arr2


#-16
HEX = Array('0'..'9') + Array('a'..'f') 

def create_uuid
  uuid = ''
  uuid_sequence = [8, 4, 4, 4, 12]
  
  uuid_sequence.each do |n|
    n.times { uuid << HEX.sample }
    uuid << '-' if n != uuid_sequence.last
  end
  uuid
end

p create_uuid