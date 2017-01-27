class Board
  WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
          [0, 3, 6], [1, 4, 7], [2, 5, 8],
          [0, 4, 8], [2, 4, 5]].freeze
  GRID_SIZE = 9

  def initialize
    @grid = Array.new(GRID_SIZE)
    @players = %w(X 0)
  end

  attr_reader :grid

  def place_marker(marker, cell)
    if empty_cell?(cell)
      @grid[cell] = marker
    else
      raise 'marker already placed in that cell'
    end
    check_for_game_over(marker)
  end

  private

  def empty_cell?(cell)
    @grid[cell].nil?
  end

  def check_for_game_over(marker)
    raise "Player #{marker} wins" if check_if_player_wins?(marker)
    raise 'Game Over' if check_if_grid_full?
  end

  def check_if_grid_full?
    (@grid - [nil]).length >= 9
  end

  def check_if_player_wins?(marker)
    WINS.any? do |win|
      win.all? { |i| @grid[i] == marker }
    end
  end
end
