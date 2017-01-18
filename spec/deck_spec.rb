require 'spec_helper'
describe "Deck" do
  describe "count_deck" do
    it "returns the number of objects in the deck_list array" do
      deck = Deck.new 'token', 52
      deck2 = Deck.new 'token', 113
      c_deck = Deck.new 'standard', 52
      c_deck2 = Deck.new 'standard', 104
      expect(deck.count_deck).to eq(52)
      expect(deck2.count_deck).to eq(113)
      expect(c_deck.count_deck).to eq(52)
      expect(c_deck2.count_deck).to eq(104)
    end

  end

  describe "set_size" do
    it "sets the @size variable when legal" do
      deck = Deck.new 'token', 62
      c_deck = Deck.new 'standard', 156
      expect(deck.size).to eq(62)
      expect(c_deck.size).to eq(156)
    end

    it "throws ArgumentError when 'standard' is not multiple of 52" do
      c_deck = Deck.new
      expect{c_deck.size = 54}.to raise_error(ArgumentError)
    end
  end

  describe "set_type" do
    it "sets the @type variable when legal" do
      deck = Deck.new 'token', 40
      c_deck = Deck.new 'standard', 52
      expect(deck.type).to eq('token')
      expect(c_deck.type).to eq('standard')
    end

    it "throws ArgumentError when type is illegal" do
      deck = Deck.new
      expect{deck.type = 'tokens'}.to raise_error(ArgumentError)
    end
  end
end
