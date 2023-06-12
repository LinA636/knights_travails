require_relative 'chess_board.rb'
require_relative 'knight.rb'

chess = ChessBoard.new(8)
knight1 = chess.knight
p knight1.field.knight_children