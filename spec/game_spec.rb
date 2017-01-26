require 'spec_helper'
require './lib/game.rb'

describe 'tictactoe' do
  let(:player) { double('player') }
  let(:player2) { double('player2') }
  let(:board) { double('board', rows: 3) }

  it 'expects a new game to be instantited with 2 players' do
    game = Game.new(player, player2, board)
    expect(game.players.length).to eq 2
  end

end
