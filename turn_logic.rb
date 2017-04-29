def can_promote(y)
  y == 7 && self.piece_color == "white" || y == 0 && self.piece_color == "black"
  # if y == 7 && self.piece_color == "white"
  #   return true
  # end
  # if y == 0 && self.piece_color == "black"
  #   return true
  # end
end

# def promotion(params)
#
#   x = params[:x_coordinate].to_i
#   y = params[:y_coordinate].to_i
#   type = params[:piece_type]
#   color = params[:piece_color]
#
#   update_attributes(x_position: nil,y_position: nil)
#
#   game.pieces.create(
#     x_coordinate: x,
#     y_coordinate: y,
#     piece_type: type,
#     piece_color: color,
#     player_id: player_id
#     )
# end

def promotion(piece, type)
  piece.update_attributes(piece_type: type)
  return piece
end
