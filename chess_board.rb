require_relative 'field.rb'
require_relative 'knight.rb'

class ChessBoard
  attr_accessor :board, :knight

  def initialize(board_size = 8)
    @board = Array.new(board_size){|i|Array.new(board_size){|j| Field.new([i,j])}}
    create_knight_tree()
    @knight = Knight.new(self.board[0][0])
    
  end

  private
  def create_knight_tree()
    self.board.each do |field|
      puts field.position
      #next_possibile_possitions = calc_next_knight_moves(current_position)
      #self.board.each do |child_field|
        #case next_possibile_possitions
       #   in [*, child_field.position, *] then field.knight_children = child_field
       # end
      #end
    end
  end

  def calc_next_knight_moves(current_position)
    next_pos = []
    for i in [-2, 2]
      for j in [-1,1]
        next_pos << [current_position[0]+i, current_position[1]+j]
        next_pos << [current_position[0]+j, current_position[1]+i]
      end
    end
    next_pos
  end  

end