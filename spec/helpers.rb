def setup_loosing_game
  @game.place_marker(0)
  @game.place_marker(1)
  @game.place_marker(2)
  @game.place_marker(4)
  @game.place_marker(3)
  @game.place_marker(6)
  @game.place_marker(5)
  @game.place_marker(8)
end

def diagonal_win_setup
  @game.place_marker(0)
  @game.place_marker(5)
  @game.place_marker(4)
  @game.place_marker(7)
end
