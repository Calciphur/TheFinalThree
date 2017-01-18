require './card'

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
      @size.times do
        token = Token.new
        @deck_list.push token
      end
    else
      num_decks = @size.to_i / 52
      suits = %w(heart diamond club spade)
      ranks = %w(two three four five six seven eight nine ten jack queen king ace)
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
end
