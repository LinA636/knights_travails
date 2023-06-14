require_relative 'chess_board.rb'


chess = ChessBoard.new()
chess.knight_moves([0,0], [1,2])
puts ''

chess.knight_moves([0,0], [3,3])
puts ''
chess.knight_moves([3,3], [0,0])
puts ''
chess.knight_moves([3,3], [4,3])