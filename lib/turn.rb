

def display_board
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
end

def valid_move?(board, index)
    index.between?(0, 8) && position_taken?(board, index) == false
end


def position_taken?(board, index)
    board[index] != nil && board[index] != "" && board[index] != " "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    input.to_i - 1
end

def move(board_array, board_index, player = "X")
    board_array[board_index] = player
    display_board(board_array)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index,)
  else
    puts "invalid input! Try again"
    turn(board)
  end
end