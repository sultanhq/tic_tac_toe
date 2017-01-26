class Board
  WIDTH = 3
  HEIGHT = 3
  def initialize
    @rows = Array.new(HEIGHT) { Array.new(WIDTH) }
  end

  attr_reader :rows
end
