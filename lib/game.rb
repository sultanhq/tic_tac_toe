class Game

  def initialize(playerX, player0, board)
    @players = [playerX, player0]
    @board = board
  end

  attr_reader :players

end
