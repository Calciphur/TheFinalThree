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
end
