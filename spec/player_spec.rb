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
end
