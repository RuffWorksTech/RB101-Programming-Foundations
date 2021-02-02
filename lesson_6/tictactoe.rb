# Tic-Tac-Toe Game

# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

# ----------------------------------------------------------------

require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_MOVE = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

def welcome_msg
  prompt 'Welcome to Tic Tac Toe!'
end

def starting_player
  if FIRST_MOVE == 'choose'
    prompt "Who should go first? (enter 'p' for player, 'c' for computer)"
    starting_player = gets.chomp.downcase
  else
    starting_player = FIRST_MOVE
  end
  starting_player
end

# 1. Display the initial empty 3x3 board
# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  (1..9).each_with_object({}) do |num, new_board|
    new_board[num] = INITIAL_MARKER
  end
end

def place_piece!(current_player, brd)
  case current_player
  when 'player' then player_places_piece!(brd)
  when 'computer' then computer_places_piece!(brd)
  end
end

def next_player(current_player)
  current_player == 'player' ? 'computer' : 'player'
end

# 2. Ask the user to mark a square.
def empty_squares(brd)
  brd.keys.select { |n| brd[n] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

# 3. Computer marks a square.
def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # offense first
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  # defense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end

  # Pick square 5 if available
  square = 5 if empty_squares(brd).include?(5)

  # random square
  square = empty_squares(brd).sample if !square

  brd[square] = COMPUTER_MARKER
end

# 5. If winner, display winner.
def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# PROGRAM ---------------------------------------------------------------

player_points = 0
comp_points = 0

welcome_msg

current_player = starting_player

loop do
  board = initialize_board

  loop do
    display_board(board)
    place_piece!(current_player, board)
    current_player = next_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    case detect_winner(board)
    when 'Player' then player_points += 1
    when 'Computer' then comp_points += 1
    end
  else
    prompt "It's a tie!"
  end

  puts "Your score: #{player_points}   |   Computer score: #{comp_points}"
  if player_points == 5 || comp_points == 5
    puts "#{detect_winner(board)} is the grand winner!"
    break
  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye."