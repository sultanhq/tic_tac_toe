require 'spec_helper'
require './lib/game.rb'

describe 'tictactoe' do
  it 'expects a new game to be instantited' do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end
end
