require 'spec_helper'
require 'player.rb'

describe 'player' do
  before(:each) do
    @playerX = Player.new
  end

  it 'a player can be instantiated' do
    expect(@playerX).to be_an_instance_of(Player)
  end

  xit 'a player can place a marker on a board' do
    @playerX.place_marker(2,2)
    expect
  end
end
