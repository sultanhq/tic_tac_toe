require_relative 'board'
require_relative 'player'

class Game
  def initialize(board, player_1, player_2)
    @players = [player_1, player_2]
    @board = board
    @current_player = nil
    choose_starting_player
  end

  attr_reader :players, :current_player

  def choose_starting_player
    @current_player = @players.rotate!(rand(2)).first
  end

  def next_turn
    @current_player = @players.rotate!.first
  end
end
