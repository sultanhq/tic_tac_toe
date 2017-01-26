require 'spec_helper'
require 'player.rb'

describe 'player' do
  it 'a player can be instantiated' do
    player = Player.new
    expect(player).to be_an_instance_of(Player)
  end
end
