require 'spec_helper'
require 'board'

describe 'board' do
  before(:each) do
    @board = Board.new
  end
  it "expects a board to be instatiated with 3 'rows'" do
    expect(@board.grid.length).to eq 3
  end

  it 'expects a board to accept an X in one of its cells' do
    @board.place_marker('X', 2, 2)
    expect(@board.grid[2][2]).to eq 'X'
  end

  it 'expects a board to accept an 0 in one of its cells' do
    @board.place_marker('0', 1, 2)
    expect(@board.grid[1][2]).to eq '0'
  end

  it 'expects a board not to accept an X in a cell if already populated' do
    @board.place_marker('X', 2, 2)
    message = 'marker already placed in that cell'
    expect { @board.place_marker('X', 2, 2) }.to raise_error(message)
  end
end
