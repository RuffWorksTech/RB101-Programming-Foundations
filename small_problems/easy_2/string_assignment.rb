name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# => Alice
# => Bob

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => BOB
# => BOB