# knights_travails
The Odin Project lesson: https://www.theodinproject.com/lessons/ruby-knights-travails

Chess board with a knight and its movings

# Knight
implementation of a knight class, containing
 - the position on the chessboard in coordinates [x,y]
 - the size of the chessboard
 - pointer to the parent, the position, where the knight came from
 - pointer to the children, all the possible next moves

the next moves are 2 to the side and 1 up/down or 2 up/down and one to the side

# ChessBoard
the chessboard does not contain any variables.
all the moves of the knight are controlled by tree manipulation. 
contains following methods:

#knight_moves(start_pos, end_pos)
  creates a linked tree from the start to the end position
  traverses the tree backwards and saves the passing positions
  prints the knight movements

#make_tree(start_pos, end_pos)
  starts with a knight at the start_pos and assigns children and saves parents until end_pos is found.
  returns the knight with position equal to end_pos

#get_history(last_knight, start_pos)
  traverses backwards throught the parent pointers from the knight with the end_pos to the knight with the start_pos
  returns an array containing all knights passing through

#print_knight_movements(history)
  prints all position the knight passed through saved in history
