def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
if board[index] == " " || board[index] == "" || board[index] == nil
  false
else
  true
end
end

def between?(index)
if index >= 0 && index <= 8
  true
else
  false
end
end

# code your #valid_move? method here
def valid_move?(board, index)
if position_taken?(board, index) == false
  if between?(index) == true
    true
  else
    false
  end
else
  false
end
end


def input_to_index(user_input)
  user_input.to_i - 1
end


def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

if valid_move?(board, index) == true
  move(board, index)
  display_board(board)
else
  turn(board)
end

end
