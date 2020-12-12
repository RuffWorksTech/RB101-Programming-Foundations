VALID_CHOICES = %w(rock paper scissors lizard spock)
ABBR_CHOICES = %w(r p sc l sp)
WINNER_HASH = { rock:     ['scissors', 'lizard'],
                paper:    ['rock', 'spock'],
                scissors: ['paper', 'lizard'],
                lizard:   ['paper', 'spock'],
                spock:    ['rock', 'scissors'] }

def prompt(message)
  puts "=> #{message}"
end

def translate_choice(abbrev)
  word =  case abbrev
          when 'r' then VALID_CHOICES[0]
          when 'p' then  VALID_CHOICES[1]
          when 'sc' then VALID_CHOICES[2]
          when 'l' then VALID_CHOICES[3]
          when 'sp' then VALID_CHOICES[4]
          end
  word
end

def win?(first, second)
  WINNER_HASH[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

def determine_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  end
end

loop do

  player_points = 0
  computer_points = 0
  loop do

    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')} (q to quit)")
      prompt("You may also enter an abbreviation (r = rock, p = paper, sc = scissors, l = lizard, sp = spock)")

      choice = gets.chomp.downcase
      abort if choice == 'q'
      break if VALID_CHOICES.include?(choice) || ABBR_CHOICES.include?(choice)
      prompt("That's not a valid choice.")
    end

    choice = translate_choice(choice) if ABBR_CHOICES.include?(choice)

    computer_choice = VALID_CHOICES.sample

    puts "=> You chose: #{choice.upcase}    |    Computer chose: #{computer_choice.upcase}"
    display_results(choice, computer_choice)

    winner = determine_winner(choice, computer_choice)
    case winner
    when 'player' then player_points += 1
    when 'computer' then computer_points += 1
    end

    puts "=> You: #{player_points}  |  Computer: #{computer_points}"
    puts '--------------------------'
    if player_points == 5
      prompt("You are the grand winner!")
      break
    elsif computer_points == 5
      prompt("The computer is the grand winner!")
      break
    end
  end

  prompt('Do you want to play again? (y/n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing!")