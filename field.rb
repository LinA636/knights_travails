class Field
  attr_accessor :position, :knight_children

  def initialize(position)
    @position = position
    @knight_children = []
  end

  def knight_children=(field)
    @knight_children = self.knight_children << field
  end

  def to_s
    "Field: #{self.position}"
  end

end