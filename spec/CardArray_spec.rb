require 'spec_helper'
require './modules/CardArray'

describe "split_shuffle" do
  let(:even_items) {[1, 2, 3, 6, 4, 2]}
  let(:odd_items) {[4, 5, 19, 6, 2]}
  let(:even_split) {CardArray.split_shuffle even_items}
  let(:odd_split) {CardArray.split_shuffle odd_items}

  it "should delete half the items in an even-sized array" do
    expect(even_split.size).to eq(3)
    expect(even_items.size).to eq(6)
  end

  it "should delete half + 1 items in an odd-sized array" do
    expect(odd_split.size).to eq(2)
    expect(odd_items.size).to eq(5)
  end

  it "should delete only even positioned elements in an array" do
    expect(even_split).to eq([2, 6, 2])
    expect(odd_split).to eq([5, 6])
  end


end

describe "count_remainder" do
  let(:card_array) {52}
  let(:card_array2) {16}

  it "should return 3 if card_array.size == 52" do
    expect(CardArray.count_remainder card_array).to eq(3)
  end

  it "should return 2 if card_array.size == 16" do
    expect(CardArray.count_remainder card_array2).to eq(2)
  end

end
