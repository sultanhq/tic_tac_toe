class Board
  GRID_SIZE = 9

  def initialize
    @grid = Array.new(GRID_SIZE)
    @players = %w(X 0)
  end

  attr_reader :grid

  def empty_cell?(cell)
    @grid[cell].nil?
  end

end
