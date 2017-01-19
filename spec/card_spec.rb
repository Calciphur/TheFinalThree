require 'spec_helper'

describe 'Card' do

  describe 'print' do

    let(:card) {Card.new 'five', 'heart'}

    it 'should print in the format "RANK of SUITs"' do
      expect(card.print).to eq("five of hearts")
    end
  end


end
