require 'spec_helper'
require 'board'

describe 'board' do
  before(:each) do
    @board = Board.new
  end
  it "expects a board to be instatiated with 3 'rows'" do
    expect(@board.grid.length).to eq 9
  end
end
