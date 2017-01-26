require 'spec_helper'
require './lib/game.rb'

describe 'tictactoe' do
  let(:playerX) { double('playerX') }
  let(:player0) { double('player0') }
  let(:board) { double('board') }

  it 'expects a new game to be instantited with 2 players and a board' do
    game = Game.new(playerX, player0, board)
    expect(game.players.length).to eq 2
  end
end
