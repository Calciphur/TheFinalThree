require './card'

class Player

  attr_reader :hand, :id

  def initialize(id)
    @hand = Array.new
    self.id = id
  end

  def draw(deck, num)
    num.times do
      @hand.push(deck.deck_list.pop)
    end
  end

  def insert_hand(deck, num=@hand.length)
    num.times do
      deck.deck_list.push(@hand.pop)
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

  private

  def id=(id)
    if id.is_a? Integer
      @id = id
    else
      raise ArgumentError, "id must be an integer"
    end
  end
end
