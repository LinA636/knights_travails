require_relative 'field.rb'

class Knight
  attr_accessor :field, :next_moves

  def initialize(field)
    @field = field
    @next_moves = calc_next_moves()
  end

  def calc_next_moves()

  end

end