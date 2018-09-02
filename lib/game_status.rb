# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

=begin
makes return false for empty && false for draw

WIN_COMBINATIONS.each do |three_in_a_row|
  return true if (three_in_a_row - board) == []
end
return false

=end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5],  #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6],  #left column
  [1, 4, 7],  #middle column
  [2, 5, 8],  #right column
  [0, 4, 8], #top-L to bottom-R diagonal
  [2, 4, 6],  #top-R to bottom-L diagonal
]

def won?(board)

  #empty_board = board.all? { |i| i = " " }
  WIN_COMBINATIONS.each do |combo|
    win_combo = WIN_COMBINATIONS[combo]

    x_win = win_combo.all? { |position| board[position] == "X" }
    o_win = win_combo.all? { |position| board[position] == "O" }

    if x_win == true || o_win == true
      return win_combo
    end
  end
end
