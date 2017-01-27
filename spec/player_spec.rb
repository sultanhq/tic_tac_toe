require 'spec_helper'
require 'player.rb'

describe 'player' do
  before(:each) do
    @player_1 = Player.new('X')
    @player_2 = Player.new('0')
  end

  it 'a player can be instantiated' do
    expect(@player_1).to be_an_instance_of(Player)
  end

  it 'Player 1 has an X marker' do
    expect(@player_1.marker).to eq 'X'
  end

  it 'Player 2 has an 0 marker' do
    expect(@player_2.marker).to eq '0'
  end
end
