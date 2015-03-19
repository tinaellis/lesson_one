#1. come up with the requirements/specifications, which will determine the scope
#2. application logic: sequence of steps
#3. translation of those steps into code
#4. run tests to verify logic

# welcome message / computer is o, player is x
# Draw a board
# X’s or O’s

# loop until a winner or all squares are taken
# player 1 pics empty square
# check for winner
# player 2 pics empty square
# check for winner

# It’s a tie
# Player 1 wins
# Player 2 wins
# Play again?

"Welcome to Tick Tack Toe! You are automatically assigned to 'x', the computer will be playing
as 'o'. On your mark, get set, go!"

def initialize_board
  b = {}
  (1..9).each {|position| b[position] = ' '}
  b
end

def draw_board(b)
  system "clear"
  #{b[1]}
  puts "      |     |     "
  puts "   #{b[1]}  |  #{b[2]}  |  #{b[3]}  "
  puts "      |     |     "
  puts "-------------------"
  puts "      |     |     "
  puts "   #{b[4]}  |  #{b[5]}  |  #{b[6]}  "
  puts "      |     |     "
  puts "-------------------"
  puts "      |     |     "
  puts "   #{b[7]}  |  #{b[8]}  |  #{b[9]}  "
  puts "      |     |     "
end

def empty_positions(b)
  b.select {|k, v| v == ' ' }.keys
end

def player_picks_square(b)
  #add verification that player picks a valid square
  puts "pick a square (1 - 9)"
  position = gets.chomp.to_i
  b[position] = 'x'
end

def computer_picks_square(b)
  position = empty_positions(b).sample
  b[position] = 'o'
end

def check_winner(b)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
    if b[line[0]] == 'x' and b[line[1]] == 'x' and b[line[2]] == 'x'
      return "Player"
    elsif b[line[0]] == 'o' and b[line[1]] == 'o' and b[line[2]] == 'o'
      return "Computer"
    else
      return nil
    end
  end
end

board = initialize_board
draw_board(board)

begin
  player_picks_square(board)
  computer_picks_square(board)
  draw_board(board)
  winner = check_winner(board)
end until winner || empty_positions(board).empty?

if winner
  puts "#{winner} won!"
else
  puts "It's a tie!"
end

