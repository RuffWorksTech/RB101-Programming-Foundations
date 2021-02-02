# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# ALGORITHM:
# 1. Initialize deck
# - Create array of 52 cards. 4 x (king, queen, jack, 2-10, and ace)
# - Shuffle deck

# 2. Deal cards to player and dealer
# - Deal 2 cards to dealer array
# - Deal 2 cards to player array
# - Return nested array

# 3. Player turn: hit or stay
#   - repeat until bust or "stay"

# 4. If player bust, dealer wins.

# 5. Dealer turn: hit or stay
#   - repeat until total >= 17

PTS_GOAL = 21

def prompt(msg)
  puts "=> #{msg}"
end

def welcome_msg
  prompt "Welcome to X-One! The goal is go get to as close to #{PTS_GOAL} without going over."
end

def initialize_deck
  (%w(2 3 4 5 6 7 8 9 10 jack queen king ace) * 4).shuffle
end

def deal_cards!(deck)
  puts '------------------------------------'
  prompt 'The dealer is dealing the cards...'
  puts ''
  sleep(2)
  [[deck.pop, deck.pop], [deck.pop, deck.pop]]
end

def print_hand(cards)
  cards.join(', ')
end

def display_cards(p_cards, d_cards)
  prompt "Your cards: #{print_hand(p_cards)}   |   Dealer's card: #{d_cards[0]}"
  sleep(2)
end

def total(cards)
  sum = cards.map do |card|
    case card
    when 'ace' then 11
    when /(king|queen|jack)/ then 10
    else card.to_i
    end
  end.sum

  sum -= 10 if cards.include?('ace') && sum > PTS_GOAL

  sum
end

def busted?(cards)
  total(cards) > PTS_GOAL
end

def hit!(cards, deck)
  cards << deck.pop
end

def winner?(p_cards, d_cards, p_total, d_total, pts)
  puts "=================================================="
  prompt "Dealer has #{print_hand(d_cards)}, for a total of: #{d_total}"
  prompt "Player has #{print_hand(p_cards)}, for a total of: #{p_total}"
  puts "=================================================="
  sleep(2)
  
  if p_total > PTS_GOAL
    prompt "The dealer won!"
    pts[1] += 1
  elsif d_total > PTS_GOAL
    prompt "You won!"
    pts[0] += 1
  else
    case total(p_cards) <=> total(d_cards)
    when 1
      prompt "You won!"
      pts[0] += 1
    when -1
      prompt "The dealer won!"
      pts[1] += 1
    when 0 then prompt "It's a tie!"
    end
  end
  sleep(2)
  display_score(pts)
end

def display_score(pts)
  prompt "Your score: #{pts[0]}   |   Dealer score: #{pts[1]}"
end

def grand_winner?(pts)
  if pts[0] == 5
    prompt "The Player is the grand winner!"
    return true
  elsif pts[1] == 5
    prompt "The Dealer is the grand winner!"
    return true
  end
  false
end

def play_again?
  puts "------------------------------------"
  prompt "Would you like to play again? (y/n)"
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

### PROGRAM -------------------------------------------------------

welcome_msg
scores = [0, 0]

until scores[0] == 5 || scores[1] == 5
  deck = initialize_deck
  player_hand, dealer_hand = deal_cards!(deck)
  player_total = total(player_hand)
  dealer_total = total(dealer_hand)
  
  display_cards(player_hand, dealer_hand)

  prompt "Your total points: #{player_total}"

  loop do
    answer = ''
    loop do
      prompt "Will you hit or stay?"
      answer = gets.chomp.downcase
      break if answer =~ /(hit|stay)/
      prompt "Sorry, you must enter 'hit' or 'stay'."
    end

    prompt "Player #{answer}s..."
    break if answer == 'stay'
    sleep(2)

    hit!(player_hand, deck)
    player_total = total(player_hand)
    break if busted?(player_hand)
    prompt "Your cards are now: #{print_hand(player_hand)}"
    sleep(2)
    prompt "Your new total is: #{player_total}"
  end

  if busted?(player_hand)
    prompt "You busted!"
    sleep(2)
    winner?(player_hand, dealer_hand, player_total, dealer_total, scores)
    next if grand_winner?(scores)
    play_again? ? next : break
  else
    prompt "The dealer is taking their turn..."
    sleep(2)
  end

  prompt "The dealer's cards are: #{print_hand(dealer_hand)}"
  sleep(2)

  until dealer_total >= PTS_GOAL - 4
    hit!(dealer_hand, deck)
    dealer_total = total(dealer_hand)
    prompt "The dealer hits..."
    sleep(2)
    prompt "The dealer's cards are now: #{print_hand(dealer_hand)}"
    sleep(2)
  end

  if busted?(dealer_hand)
    prompt "The dealer busted!"
    sleep(2)
    winner?(player_hand, dealer_hand, player_total, dealer_total, scores)
    next if grand_winner?(scores)
    play_again? ? next : break
  else
    prompt "The dealer stays."
    sleep(2)
  end

  winner?(player_hand, dealer_hand, player_total, dealer_total, scores)
  next if grand_winner?(scores)
  play_again? ? next : break
end

prompt "Thanks for playing X-One! Goodbye."