require 'spec_helper'
require 'board'

describe 'board' do
  before(:each) do
    @board = Board.new
  end
  it "expects a board to be instatiated with 3 'rows'" do
    expect(@board.grid.length).to eq 9
  end

  it 'expects a board to accept an X in one of its cells' do
    @board.place_marker('X', 5)
    expect(@board.grid[5]).to eq 'X'
  end

  it 'expects a board to accept an 0 in one of its cells' do
    @board.place_marker('0', 1)
    expect(@board.grid[1]).to eq '0'
  end

  it 'expects a board not to accept an X in a cell if already populated' do
    @board.place_marker('X', 5)
    message = 'marker already placed in that cell'
    expect { @board.place_marker('X', 5) }.to raise_error(message)
  end

  describe 'player tests' do
    let(:player_X) { double('player_X', marker: 'X') }

    it 'a player can place a marker on a board' do
      @board.place_marker(player_X.marker, 5)
      expect(@board.grid[5]).to eq 'X'
    end
  end

  describe 'game over' do
    let(:player_X) { double('player_X', marker: 'X') }
    it 'game over if all of the board is full' do
      8.times do |i|
        @board.place_marker(player_X.marker, i)
      end
      message = 'Game Over'
      expect { @board.place_marker(player_X.marker, 8) }.to raise_error message
    end
  end
end
