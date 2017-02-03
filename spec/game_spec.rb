require 'spec_helper'

describe 'Game' do

  describe 'initialization' do

    let(:game) {Game.new game_type:'threeRemain', deck_count:52}
    let(:rgame) {Game.new game_type:'reduction', deck_count:100}
    let(:game2) {Game.new game_type:'threeRemain', deck_type:'token', deck_count:31}

    it "should instantiate the player and deck objects with the parameters passed to it" do
      expect(game.player.id).to eq(1)
      expect(game.deck.count_deck).to eq(52)
      expect(game.deck.deck_list[1]).to be_an_instance_of(Card)

      expect(game2.player.id).to eq(1)
      expect(game2.deck.count_deck).to eq(31)
      expect(game2.deck.deck_list[1]).to be_a(Token)
    end

    it "should infer the correct deck_type from the game_type" do
      expect(rgame.deck.type).to eq('token')
      expect(game.deck.type).to eq('standard')
    end

  end

  describe 'game_type=' do

    let(:game) {Game.new game_type:'threeRemain', deck_count:52}
    let(:game_no_init) {Game.new}

    it "should raise ArgumentError when passed game_type != threeRemain or reduction" do
      expect{game.game_type='notThreeRemain'}.to raise_error(ArgumentError)
    end

    it "should assign game_type only if passed threeRemain or reduction" do
      expect{game.game_type='threeRemain'}.to_not raise_error
      expect{game.game_type='reduction'}.to_not raise_error
    end

    it "should default to 'threeRemain' when passed no value for game_type" do
      expect(game_no_init.game_type).to eq('threeRemain')
    end

  end

  describe 'play' do

    let(:game) {Game.new game_type:'threeRemain', deck_count:52}
    let(:reductionGame) {Game.new game_type:'reduction', deck_count:52}

    it "should end with deck size 3 if initial deck size is 52" do
      game.play
      expect(game.deck.size).to eq(3)
    end

    it "should end with cards 6, 22, and 38 if deck size is 52" do
      reductionGame.play
      a = Array.new
      (reductionGame.deck.deck_list).each do |item|
        a.push(item.id)
      end
      expect(a).to eq([6, 22, 38])
    end

  end
end
