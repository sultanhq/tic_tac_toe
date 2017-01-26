require 'spec_helper'
require 'board'

describe 'board' do

  it "expects a board to be instatiated with 3 'rows'" do
    board = Board.new
    expect(board.rows.length).to eq 3
  end

end
