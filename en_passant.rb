En passant --> in passing

if black pawn is in 4th row (rank?)
it can capture a white pawn that moves straight to the 4th rank either side of it.

if white pawn is in 5th row
it can capture a black pawn that moves straight to 5th row either side of it.

abstract --> if previous move is opposition pawn first move && if opposition pawn y coord is ==1 && opposition pawn


need to define first move method:

 def first_move?(y_coordinate)
  (y_coordinate == 1 && piece_color == "black") || (y_coordinate == 6 && piece_color == "white")
 end

 def en_passant?(new_y)
   difference_y = (new_y - y_coordinate).abs
   if first_move?(y_coordinate) && difference_y == 1
     return true
   end
 end


store game state as a series of strings - iterate through the strings to find previous move.


web socket - new technology built into web browsers that
