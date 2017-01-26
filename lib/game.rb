class Game

  def initialize(player1, player2, board)
    @players = [player1, player2]
    @board = board
  end

  attr_reader :players

end
