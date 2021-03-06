# X) Tic Tac Toe:
#
# A tic tac toe board has 9 spaces

#   0  |  1  |  2
# -----------------
#   3  |  4  |  5
# -----------------
#   6  |  7  |  8

# We can represent this as a 9 space array
#
# Example:
#
# This board:
#
#  'X' | 'O' |
# -----------------
#      | 'X' |
# -----------------
#  'O' |     |

# We can represent as
tic_tac_toe_board = [ 'X', 'O', nil, nil, 'X', nil, 'O', nil, nil ]

# or to make it easier to read:
tic_tac_toe_board = [
  'X', 'O', nil,
  nil, 'X', nil,
  'O', nil, nil
]


# Exercise:  Checking first row for win
#
# Write a method that takes the board as an argument
# and tells us if a player has won by filling in the top row

def first_row_win?(board)
  # 1) check that the first space is not nil (Hint: !=, &&)
  # 2) check that first space is equal to second (Hint: ==, &&)
  # 3) check that first space is equal to third (Hint: ==)
end

# Test cases:
winning_board = [
  'X', 'X', 'X',
  nil, 'X', nil,
  'O', nil, nil
]

non_winning_board_1 = [
  nil, nil, nil,
  nil, 'X', nil,
  'O', nil, nil
]

non_winning_board_2 = [
  'X', 'X', 'O',
  nil, 'X', nil,
  'O', nil, nil
]


# Answer
def first_row_win?(board)
  board[0] != nil &&
    board[0] == board[1] &&
    board[0] == board[2]
end
# /Answer












# Exercise: Check for win on whole board
#
# 1) write methods and tests for all possible win cases
#
# first_row_win?, second_row_win?, third_row_win?,
# first_column_win?, second_column_win?, third_column_win?,
# diag_right_win?, diag_left_win?
#
# 2) combine all the possible win cases in a single method: board_win? (Hint: ||)

# Answer
def second_row_win?(board)
  board[3] != nil &&
    board[3] == board[4] &&
    board[3] == board[5]
end

def third_row_win?(board)
  board[6] != nil &&
    board[6] == board[7] &&
    board[6] == board[8]
end

def first_column_win?(board)
  board[0] != nil &&
    board[0] == board[3] &&
    board[0] == board[6]
end

def second_column_win?(board)
  board[1] != nil &&
    board[1] == board[4] &&
    board[1] == board[7]
end

def third_column_win?(board)
  board[2] != nil &&
    board[2] == board[5] &&
    board[2] == board[8]
end

def diag_right_win?(board)
  board[0] != nil &&
    board[0] == board[4] &&
    board[0] == board[8]
end

def diag_left_win?(board)
  board[2] != nil &&
    board[2] == board[4] &&
    board[2] == board[6]
end

def board_win?(board)
  first_row_win?(board) ||
    second_row_win?(board) ||
    third_row_win?(board) ||
    first_column_win?(board) ||
    second_column_win?(board) ||
    third_column_win?(board) ||
    diag_right_win?(board) ||
    diag_left_win?(board)
end
# /Answer






# Exercise: print the first row
#
# NOTE: we are going to build the row piece by piece, so we'll use the 'print' method
#
# 1) if first space is empty (nil) , print a string with a space ( " " )
#    otherwise, print the letter in the space (Hint: if/else)
# 2) print pipe divider (|)
# 3) repeat step 1 with second space on the board
# 4) repeat step 1 with third space on the board
# 5) add a newline (Hint: puts)

# Test
test_board = [
  'X', nil, 'O',
  nil, 'X', nil,
  'O', nil, nil
]


def print_first_row(board)
  print board[0]
  print '|'
  print board[1]
  print '|'
  print board[2]
end

def print_second_row(board)
  print board[3]
  print '|'
  print board[4]
  print '|'
  print board[5]
end

def print_third_row(board)
  print board[6]
  print '|'
  print board[7]
  print '|'
  print board[8]
end

def print_all(board)
  print_first_row(board)
  puts
  puts "-" * 6
  print_second_row(board)
  puts
  puts "-" * 6
  print_third_row(board)
end


def print_first_row(board)
  # your code here
end


# Answer
def print_first_row(board)
  if board[0] != nil
    print board[0]
  else
    print ' '
  end

  print '|'

  if board[1] != nil
    print board[1]
  else
    print ' '
  end

  print '|'

  if board[2] != nil
    print board[2]
  else
    print ' '
  end

  puts
end
# /Answer






# X) Abstraction
#
# Abstraction makes something less literal
#
# Example:
#
# - When we name a person in real life, the name is an abstraction for the person.
# - When we create a variable, the variable name is an abstraction of the value.
# - When we create a method, the method name is an abstraction of all the code inside of it

# In the print row method, we repeated the following code.  The only thing that changed
# was the value we were checking.  We can abstract it to a method instead

# Code:
#
# if board[index] != nil
#   print board[index]
# else
#   print ' '
# end


# Exercise: Abstract to a method
#
# Write a method `print_if_not_nil` that:
# 1) takes a value as an argument
# 2) If the value is nil, print a string with a space (" ")
# 3) otherwise, print the value (Hint: else)
# 4) rewrite the `print_first_row` method to use `print_if_not_nil` for all 3 spaces


# Answer
def print_if_not_nil(value)
  if value == nil
    print ' '
  else
    print value
  end
end

def print_first_row(board)
  print_if_not_nil(board[0])
  print '|'
  print_if_not_nil(board[1])
  print '|'
  print_if_not_nil(board[2])

  puts
end
# /Answer







# Exercise:  Print the whole board
#
# 1) write the print method for each row: print_second_row, print_third_row
# 2) write a print_board method that prints each row, and a line of hyphens(-) between them

# Answer
def print_second_row(board)
  print_not_nil(board[3])
  print '|'
  print_not_nil(board[4])
  print '|'
  print_not_nil(board[5])

  puts
end

def print_third_row(board)
  print_not_nil(board[6])
  print '|'
  print_not_nil(board[7])
  print '|'
  print_not_nil(board[8])

  puts
end

def print_board(board)
  print_first_row(board)
  puts '-'*6
  print_second_row(board)
  puts '-'*6
  print_third_row(board)
end
# /Answer






# X) Tic Tac Toe: finish the game
#
#
# Write a two player tic tac toe game:

def start_tic_tac_toe
  board = [nil] * 9  # Shortcut to make an array with 9 nils
  player = 'X'  # Choose first player

  loop do
    # Print board
    # ask user which space(index) they want to choose
    # get user input as a number

    # check if space(index) is taken
    #   if it is, then tell user and skip to next iteration

    # put player icon in space

    # if there is a win, tell player they won, then break the loop

    # if there is a tie, tell player it's a tie, then break the loop

    # change to other player:
    #  if 'X' change to 'O'
    #  if 'O' change to 'X'
  end
end


# Answer
def board_tie?(board)
  !board.include?(nil)
end


def start_tic_tac_toe
  board = [nil] * 9
  player = 'X'

  loop do
    # Print board
    print_board(board)

    # ask user for input
    print 'Please enter a space number 0-8: '
    # get user input as a number
    user_input = gets.chomp.to_i

    # check if index is taken
    if board[user_input] != nil
      # if it is, then tell user and skip to next iteration
      puts 'space already taken'
      next
    end

    # put player icon in space
    board[user_input] = player

    # if there is a win, tell player they won, then break the loop
    if board_win?(board)
      puts 'Winner: ' + player
      break
    end

    # if there is a tie, tell player it's a tie, then break the loop
    if board_tie?(board)
      puts 'Tie'
      break
    end

    # change to other player 'O'
    if player == 'X'
      player = 'O'
    else
      player = 'X'
    end
  end
end
# /Answer



