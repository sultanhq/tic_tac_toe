require 'spec_helper'
require './lib/game.rb'

describe 'tictactoe' do
  let(:player) { double('player') }
  let(:player2) { double('player2') }

  it 'expects a new game to be instantited with 2 players' do
    game = Game.new(player, player2)
    expect(game.players.length).to eq 2
  end

end
