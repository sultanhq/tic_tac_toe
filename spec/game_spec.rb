require 'spec_helper'
require './lib/game.rb'

describe 'game' do
  let(:player_1) { double('player_1', marker: 'X') }
  let(:player_2) { double('player_2', marker: '0') }
  let(:board) { double('board') }

  srand 123

  it 'expects a new game to be instantited with 2 players and a board' do
    game = Game.new(board, player_1, player_2)
    expect(game.players.length).to eq 2
  end

  describe 'board' do
    # let(:board) { double('board', :empty_cell? => true, :grid => 'X') }
    before(:each) do
      @board = Board.new
      @game = Game.new(@board, player_1, player_2)
    end

    it 'expects a board to accept an X in one of its cells' do
      @game.place_marker(5)
      expect(@board.grid[5]).to eq '0'
    end

    it 'expects a board to accept an 0 in one of its cells' do
      @game.place_marker(1)
      expect(@board.grid[1]).to eq 'X'
    end
  end

  describe 'turns' do
    let(:player_1) { double('player_1') }
    let(:player_2) { double('player_2') }

    before(:each) do
      @game = Game.new(board, player_1, player_2)
    end

    it 'sets which players turn it is at random to start' do
      expect(@game.current_player).to eq(player_1)
    end

    it 'changed the turn once a marker has been placed' do
      @game.next_turn
      expect(@game.current_player).to eq(player_2)
    end
  end
end

describe 'logic' do
  let(:player_1) { double('player_1', marker: 'X') }
  let(:player_2) { double('player_2', marker: '0') }

  before(:each) do
    @board = Board.new
    @game = Game.new(@board, player_1, player_2)
  end

  it 'expects a board not to accept a marker in a cell if already populated' do
    @game.place_marker(5)
    message = 'marker already placed in that cell'
    expect(@game.place_marker(5)).to eq message
  end

  describe 'player tests' do
    it 'a player can place a marker on a board' do
      @game.place_marker(5)
      expect(@board.grid[5]).to eq 'X'
    end

    it 'player 1 can win by placing 0 in cells 0,4,8 (diagonal)' do
      diagonal_win_setup
      message = 'Player 0 wins'
      expect(@game.place_marker(8)).to eq message
    end

    it 'only the current player can play' do
      @game.next_turn
      @game.place_marker(0)
    end
  end

  describe 'game over' do
    let(:player_1) { double('player_1', marker: 'X') }
    let(:player_2) { double('player_2', marker: '0') }

    it 'game over if all of the board is full and no-one wins' do
      setup_loosing_game
      message = 'Game Over'
      expect(@game.place_marker(7)).to eq message
    end
  end
end
