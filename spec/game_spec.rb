require 'spec_helper'
require './lib/game.rb'

describe 'game' do
  let(:player_X) { double('player_X') }
  let(:player_0) { double('player_0') }
  let(:board) { double('board') }
  srand 123

  it 'expects a new game to be instantited with 2 players and a board' do
    game = Game.new(player_X, player_0, board)
    expect(game.players.length).to eq 2
  end

  describe 'turns' do
    let(:player_X) { double('player_X') }
    let(:player_0) { double('player_0') }

    before(:each) do
      @game = Game.new(player_X, player_0, board)
    end

    it 'sets which players turn it is at random to start' do
      expect(@game.turn).to eq(player_0)
    end

    it 'changed the turn once a marker has been placed' do
      @game.next_turn
      expect(@game.turn).to eq(player_0)
    end


  end
end
