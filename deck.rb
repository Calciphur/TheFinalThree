require './card'
require './modules/CardModule'
class Deck

  attr_reader :size, :type, :deck_list

  def initialize(deck_type='standard', size=52)
    @deck_list = Array.new
    self.type = deck_type
    self.size = size
    build
  end

  def size=(size) #must throw error if 'standard' type and size % 52 != 0
    if @type == 'standard'
      if size % 52 == 0
        @size = size
      else
        raise ArgumentError, "'standard' size must be multiple of 52"
      end
    else
      @size = size
    end
  end

  def type=(type)
    if type == 'standard' || type == 'token'
      @type = type
    else
      raise ArgumentError, "type must be either 'standard' or 'token'."
    end
  end

  def build
    if @type == 'token'
      for i in 1..@size
        token = Token.new(i)
        @deck_list.push token
      end
    else
      num_decks = @size.to_i / 52
      suits = CardModule::SUITS
      ranks = CardModule::RANKS
      (num_decks).times do
        suits.each { |suit|
          ranks.each { |rank|
            card = Card.new(rank, suit)
            @deck_list.push card
          }
        }
      end
    end
  end

  def count_deck
    @deck_list.count
  end

  def print
    count_max = self.count_deck - 1
    for i in 0..count_max
      p "#{@deck_list[i].print}"
    end
  end
end
