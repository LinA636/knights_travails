class Knight
  attr_accessor :children, :parent
  attr_reader :board_size, :position

  MOVEMENTS = [[-2,-1], [-2,1], [-1,-2], [-1,2], 
              [1,-2], [1,2], [2,-1], [2,1]].freeze

  def initialize(position, board_size = 8, parent = nil)
    @position = position
    @parent = parent
    @board_size = board_size
    @children = []
  end

  def next_movements
    MOVEMENTS.map{|arr| [self.position[0]+arr[0], self.position[1]+arr[1]]}
             .keep_if{|arr| valid_pos?(arr, board_size)} 
  end

  def to_s
    "Knight: #{self.position}"
  end

  private
  def valid_pos?(arr, board_size)
    arr[0].between?(0,board_size-1) && arr[1].between?(0,board_size-1)
  end

end