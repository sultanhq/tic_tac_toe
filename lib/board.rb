class Board
  WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
          [0, 3, 6], [1, 4, 7], [2, 5, 8],
          [0, 4, 8], [2, 4, 5]].freeze
  SIZE = 9

  def initialize
    @grid = Array.new(SIZE)
  end

  attr_reader :grid

  def place_marker(marker, cell)
    if check_for_empty_cell?(cell)
      @grid[cell] = marker
    else
      raise 'marker already placed in that cell'
    end
    raise 'Game Over' if check_for_game_over?
  end

  private

  def check_for_empty_cell?(cell)
    @grid[cell].nil?
  end

  def check_for_game_over?
    check_if_player_wins? || check_if_grid_full?
  end

  def check_if_grid_full?
    (@grid - [nil]).length >= 9
  end

  def check_if_player_wins?
    players = %w(X 0)
    win = []
    players.each do |letter|
      @grid.each_with_index.select do |val, index|
        win.push(index) if val == letter
      end
    end
    WINS.include?(win)
  end
end
