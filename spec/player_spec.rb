require 'spec_helper'
require 'player.rb'

describe 'player' do
  before(:each) do
    @player_X = Player.new('X')
    @player_0 = Player.new('0')
  end

  it 'a player can be instantiated' do
    expect(@player_X).to be_an_instance_of(Player)
  end

  it 'Player X has an X marker' do
    expect(@player_X.marker).to eq 'X'
  end

  it 'Player 0 has an 0 marker' do
    expect(@player_0.marker).to eq '0'
  end
end
