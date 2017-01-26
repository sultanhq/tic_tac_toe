require 'spec_helper'
require 'player.rb'

describe 'player' do
  before(:each) do
    @player_X = Player.new
  end

  it 'a player can be instantiated' do
    expect(@player_X).to be_an_instance_of(Player)
  end

  
end
