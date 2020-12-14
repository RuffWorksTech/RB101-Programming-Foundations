#-1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.include?('Spot') #or
p ages.key?('Spot') #or
p ages.has_key?('Spot') #or
p ages.member?('Spot')

#-2
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.swapcase!
puts munsters_description.capitalize!
puts munsters_description.downcase!
puts munsters_description.upcase!

#-3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
p ages.merge!(additional_ages)

#-4
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?('Dino') #or
p advice.match?('Dino')

#-5
flintstones = %w(Fred Barney Wilma Betty BamBam, Pebbles)

#-6
p flintstones << 'Dino'

#-7
p flintstones.append('Dino', 'Hoppy') #or
p flintstones.push('Dino').push('Hoppy') #or
p flintstones.concat(%w(Dino Hoppy))

#-8
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice(0..38) #or
p advice.slice(0, advice.index('house'))
#both are meant to be .slice!

#-9
statement = "The Flintstones Rock!"
puts statement.count('t')

#-10
title = "Flintstone Family Members"
table_width = 40
puts title.center(table_width)