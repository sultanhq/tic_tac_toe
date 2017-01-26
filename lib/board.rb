class Board
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
    (@grid - [nil]).length >= 9
  end
end
