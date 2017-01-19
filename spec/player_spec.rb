require 'spec_helper'

describe 'Player' do
  describe 'draw' do
    it "should add the last three cards in the deck to the hand array" do
      deck = Deck.new 'standard', 52
      player = Player.new(1)
      player.draw(deck, 3)
      expect(player.hand[1].print).to eq(
        "king of spades"
      )
      expect(player.hand[2].print).to eq(
        "queen of spades"
      )
    end

    it "should remove the last three cards from the deck_list array" do
      deck = Deck.new 'standard', 52
      player = Player.new(1)
      player.draw(deck, 3)
      expect(deck.count_deck).to eq(49)
    end
  end

  describe 'insert_hand' do
    it "should remove all cards from 'hand' when no num param passed" do
      player = Player.new(1)
      deck = Deck.new 'standard', 52
      player.draw(deck, 3)
      player.insert_hand(deck)
      expect(player.hand.length).to eq(0)
      expect(deck.count_deck).to eq(52)
    end

    it "should remove specified # cards from hand when num param passed" do
      player = Player.new(1)
      deck = Deck.new 'standard', 52
      player.draw(deck, 3)
      player.insert_hand(deck, 1)
      expect(player.hand.length).to eq(2)
      expect(deck.count_deck).to eq(50)
    end

  end

  describe 'view_hand' do

    it "should return 'empty' if the hand is empty" do
      player = Player.new(1)
      expect(player.view_hand).to eq('empty')
    end

    # can't get test to work to check whether or not the view_hand method
    # is printing formatted contents of the hand array :(

  end

  describe 'id' do
    it "should set the @id of the player when passed a valid id" do
      player = Player.new(1)
      expect(player.id).to eq(1)
    end
  end
end
