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
  end

  def check_for_empty_cell?(cell)
    @grid[cell].nil?
  end
end
