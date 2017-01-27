require 'spec_helper'
require './lib/game.rb'

describe 'game' do
  let(:player_1) { double('player_1') }
  let(:player_2) { double('player_2') }
  let(:board) { double('board') }
  srand 123

  it 'expects a new game to be instantited with 2 players and a board' do
    game = Game.new(board, player_1, player_2)
    expect(game.players.length).to eq 2
  end

  describe 'turns' do
    let(:player_1) { double('player_1') }
    let(:player_2) { double('player_2') }

    before(:each) do
      @game = Game.new(board, player_1, player_2)
    end

    it 'sets which players turn it is at random to start' do
      expect(@game.current_player).to eq(player_2)
    end

    it 'changed the turn once a marker has been placed' do
      @game.next_turn
      expect(@game.current_player).to eq(player_2)
    end
  end
end
