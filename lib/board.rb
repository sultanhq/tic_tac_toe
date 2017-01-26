class Board
  WIDTH = 3
  HEIGHT = 3
  def initialize
    @grid = Array.new(HEIGHT) { Array.new(WIDTH) }
  end

  attr_reader :grid

  def place_marker(marker, row, column)
    if check_for_empty_cell?(row, column)
      @grid[row][column] = marker
    else
      raise 'marker already placed in that cell'
    end
  end

  def check_for_empty_cell?(row, column)
    @grid[row][column].nil?
  end
end
