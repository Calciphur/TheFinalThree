require 'spec_helper'
describe "Deck" do
  describe "count_deck" do

    let(:deck) {Deck.new 'token', 52}
    let(:deck2) {Deck.new 'token', 113}
    let(:c_deck) {Deck.new 'standard', 52}
    let(:c_deck2) {Deck.new 'standard', 104}

    it "returns the number of objects in the deck_list array" do
      expect(deck.count_deck).to eq(52)
      expect(deck2.count_deck).to eq(113)
      expect(c_deck.count_deck).to eq(52)
      expect(c_deck2.count_deck).to eq(104)
    end

  end

  describe "set_size" do

    let(:deck) {Deck.new 'token', 62}
    let(:c_deck) {Deck.new 'standard', 156}

    it "sets the @size variable when legal" do
      expect(deck.size).to eq(62)
      expect(c_deck.size).to eq(156)
    end

    it "throws ArgumentError when 'standard' is not multiple of 52" do
      expect{c_deck.size = 54}.to raise_error(ArgumentError)
    end
  end

  describe "set_type" do

    let(:deck) {Deck.new 'token', 40}
    let(:c_deck) {Deck.new 'standard', 52}

    it "sets the @type variable when legal" do
      expect(deck.type).to eq('token')
      expect(c_deck.type).to eq('standard')
    end

    it "throws ArgumentError when type is illegal" do
      expect{deck.type = 'tokens'}.to raise_error(ArgumentError)
    end
  end

  describe "print" do

    let(:deck) {Deck.new 'token', 10}
    let(:c_deck) {Deck.new 'standard', 52}

    it "should print the formatted contents of the deck_list array" do
      expect(deck.print).to eq(
        for i in 0..9
          p "#{deck.deck_list[i]}\n"
        end
      )
      expect(c_deck.print).to eq(
        for i in 0..51
          p "#{c_deck.deck_list[i]}\n"
        end
      )
    end
  end
end
