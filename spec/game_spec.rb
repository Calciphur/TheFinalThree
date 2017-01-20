require 'spec_helper'

describe 'Game' do

  describe 'initialization' do

    let(:game) {Game.new 'threeRemain', 'standard', 52}
    let(:game2) {Game.new 'threeRemain', 'token', 31}

    it "should instantiate the player and deck objects with the parameters passed to it" do
      expect(game.player.id).to eq(1)
      expect(game.deck.count_deck).to eq(52)
      expect(game.deck.deck_list[1]).to be_an_instance_of(Card)

      expect(game2.player.id).to eq(1)
      expect(game2.deck.count_deck).to eq(31)
      expect(game2.deck.deck_list[1]).to be_a(Token)
    end
  end

  describe 'game_type=' do

    let(:game) {Game.new 'threeRemain', 'standard', 52}
    let(:game_no_init) {Game.new}

    it "should raise ArgumentError when passed game_type != threeRemain" do
      expect{game.game_type='notThreeRemain'}.to raise_error(ArgumentError)
    end

    it "should assign game_type only if passed threeRemain" do
      expect{game.game_type='threeRemain'}.to_not raise_error
    end

    it "should default to 'threeRemain' when passed no value for game_type" do
      expect(game_no_init.game_type).to eq('threeRemain')
    end
  end
end
