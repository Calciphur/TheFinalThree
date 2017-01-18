require 'spec_helper'

describe 'Card' do
  describe 'print' do
    it 'should print in the format "RANK of SUITs"' do
      card = Card.new "five", "heart"
      expect(card.print).to eq("five of hearts")
    end
  end


end
