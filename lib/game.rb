class Game
  require_relative 'board'
  require_relative 'player'
  
  def initialize(playerX, player0, board)
    @players = [playerX, player0]
    @board = board
    @turn = nil
  end

  attr_reader :players, :turn

  def choose_starting_player
    @turn = @players[rand(2)]
  end

end
