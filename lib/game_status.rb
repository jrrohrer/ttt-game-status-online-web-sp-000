# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # center column
  [2,5,8], # right column
  [0,4,8], # top l to bottom r diagonal
  [2,4,6] # top r to bottom l diagonal
]

# Define #won? method
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |position|
      if position[0] == "X" && position[1] == "X" && position[2] == "X"
        return win_combination
      else
        false
      end
    end
  end
end