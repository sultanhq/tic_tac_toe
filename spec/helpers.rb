def setup_loosing_game
  @board.place_marker(player_1.marker, 0)
  @board.place_marker(player_1.marker, 2)
  @board.place_marker(player_1.marker, 3)
  @board.place_marker(player_1.marker, 5)
  @board.place_marker(player_1.marker, 7)
  @board.place_marker(player_2.marker, 1)
  @board.place_marker(player_2.marker, 4)
  @board.place_marker(player_2.marker, 6)
end
