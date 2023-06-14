require_relative 'knight.rb'

class ChessBoard
  attr_reader :board_size

  def initialize(board_size = 8)
    @board_size = board_size
  end
 

  def knight_moves(start_pos, end_pos)
    last_knight = make_tree(start_pos, end_pos)
    history = get_history(last_knight, start_pos)
    print_knight_movements(history)
  end

  private
  def make_tree(start_pos, end_pos)
    knight = Knight.new(start_pos, board_size)
    queue = [knight]
    current_knight = queue.shift
    until current_knight.position == end_pos
      current_knight.next_movements.each do |position|
        child = Knight.new(position, board_size, current_knight)
        current_knight.children << child
        queue << child
        if child.position == end_pos
          break
        end
      end
      current_knight = queue.shift
    end
    current_knight
  end

  def get_history(knight, start_pos)
    history = [knight]
    until knight.position == start_pos
      knight = knight.parent
      history << knight
    end
    history
  end

  def print_knight_movements(history)
    puts "You made it in #{history.length-1} moves! Here's your path:"
    history.reverse.each {|knight| p knight.position}
  end

end