require 'spec_helper'

describe 'Player' do

  describe 'draw' do

    let(:deck) {Deck.new 'standard', 52}
    let(:player) {Player.new 1}

    it "should add the last three cards in the deck to the hand array" do
      player.draw(deck, 3)
      expect(player.hand[1].print).to eq(
        "king of spades"
      )
      expect(player.hand[2].print).to eq(
        "queen of spades"
      )
    end

    it "should remove the last three cards from the deck_list array" do
      player.draw(deck, 3)
      expect(deck.count_deck).to eq(49)
    end
  end

  describe 'insert_hand' do

    let(:player) {Player.new 1}
    let(:deck) {Deck.new 'standard', 52}

    it "should remove all cards from 'hand' when no num param passed" do
      player.draw(deck, 3)
      player.insert_hand(deck)
      expect(player.hand.length).to eq(0)
      expect(deck.count_deck).to eq(52)
    end

    it "should remove specified # cards from hand when num param passed" do
      player.draw(deck, 3)
      player.insert_hand(deck, 1)
      expect(player.hand.length).to eq(2)
      expect(deck.count_deck).to eq(50)
    end

  end

  describe 'view_hand' do

    let(:deck) {Deck.new 'standard', 52}
    let(:player) {Player.new 1}

    it "should return 'empty' if the hand is empty" do
      expect(player.view_hand).to eq('empty')
    end

    it "should return formatted contents of the hand array" do
      player.draw(deck, 3)
      expect{ player.view_hand }.to output("ace of spades\nking of spades\nqueen of spades\n").to_stdout
    end

  end

  describe 'id' do

    let(:player) {Player.new 1}
    
    it "should set the @id of the player when passed a valid id" do
      expect(player.id).to eq(1)
    end
  end
end
