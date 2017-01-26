require 'spec_helper'
require './lib/game.rb'

describe 'game' do
  let(:playerX) { double('playerX') }
  let(:player0) { double('player0') }
  let(:board) { double('board') }
  srand 123

  it 'expects a new game to be instantited with 2 players and a board' do
    game = Game.new(playerX, player0, board)
    expect(game.players.length).to eq 2
  end

  describe 'turns' do
    let(:playerX) { double('playerX') }
    let(:player0) { double('player0') }
    let(:board) { double('board') }

    before(:each) do
      @game = Game.new(playerX, player0, board)
      @game.choose_starting_player
    end

    it 'sets which players turn it is at random to start' do
      expect(@game.turn).to eq(playerX)
    end

    it 'changed the turn once a marker has been placed' do
      @game.next_turn
      expect(@game.turn).to eq(playerX)
    end
  end
end
