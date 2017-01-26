class Game
  require_relative 'board'
  require_relative 'player'

  def initialize(player_X, player_0, board)
    @players = [player_X, player_0]
    @board = board
    @turn = nil
  end

  attr_reader :players, :turn

  def choose_starting_player
    @turn = @players.rotate!(rand(2)).first
  end

  def next_turn
    @turn = @players.rotate!.first
  end
end
