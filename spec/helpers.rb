def setup_loosing_game
  @board.place_marker(player_X.marker, 0)
  @board.place_marker(player_X.marker, 2)
  @board.place_marker(player_X.marker, 3)
  @board.place_marker(player_X.marker, 5)
  @board.place_marker(player_X.marker, 7)
  @board.place_marker(player_0.marker, 1)
  @board.place_marker(player_0.marker, 4)
  @board.place_marker(player_0.marker, 6)
end
