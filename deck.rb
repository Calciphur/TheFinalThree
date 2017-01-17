require './card'

class Deck

  @deck_list = []
  
  def initialize(deck_type, size)
    @size = size
    @type = deck_type

    if @type == 'standard'
      build_card_deck
    elsif @type == 'token'
      build_token_deck
    end

  end

  def get_size
    @size
  end

  def get_type
    @type
  end

  def build_token_deck
    for i in 1..get_size
      token = Token.new
      @deck_list.push(token)
    end
  end

  def build_card_deck
    suits = %w(heart diamond spade club)
    ranks = %w(two three four five six seven eight nine ten jack queen king ace)

    suits.each { |suit|
      ranks.each { |rank|
        card = Card.new suit, rank
        @deck_list.push(card)
      }
    }
  end

  def count_deck
    @deck_list.count
  end



end
