class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  attr_reader :players

end
