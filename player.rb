require './card'

class Player

  attr_reader :hand

  def initialize(id)
    @hand = Array.new
  end

  def draw(deck, num)
    num.times do
      @hand.push(deck.deck_list.pop)
    end
  end

  def view_hand
    if @hand.empty?
      'empty'
    else
      (@hand.length).times do |i|
        puts "#{@hand[i].print}"
      end 
    end
  end
end
