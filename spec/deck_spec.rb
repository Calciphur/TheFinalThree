require 'spec_helper'
require 'rspec'
describe "Deck" do
  describe "count_deck" do
    it "returns the number of objects in the deck_list array" do
      deck = Deck.new 'token', 52
      expect(deck.count_deck).to eq(52)
    end
  end


end
