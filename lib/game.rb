require_relative 'board'
require_relative 'player'

WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 5]].freeze

class Game
  def initialize(board, player1, player2)
    @players = [player1, player2]
    @board = board
    @current_player = nil
    choose_starting_player
  end

  attr_reader :players, :current_player

  def next_turn
    @current_player = @players.rotate!.first
  end

  def place_marker(cell)
    if @board.empty_cell?(cell)
      @board.grid[cell] = current_player.marker
    else
      return 'marker already placed in that cell'
    end
    check_for_game_over(current_player.marker)
  end

  private

  def choose_starting_player
    @current_player = @players.rotate!(rand(2)).first
  end

  def check_for_game_over(marker)
    next_turn
    return "Player #{marker} wins" if check_if_player_wins?(marker)
    return 'Game Over' if check_if_grid_full?
  end

  def check_if_grid_full?
    (@board.grid.count { |e| !e.nil? }) >= 9
  end

  def check_if_player_wins?(marker)
    WINS.any? do |win|
      win.all? { |i| @board.grid[i] == marker }
    end
  end
end
