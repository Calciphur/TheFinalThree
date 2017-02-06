require './modules/CardArray'
require './player'
require './deck'

class Game

  attr_reader :player, :deck, :game_type

  def initialize(game_type:'threeRemain', deck_type:nil, deck_count:52)
    case game_type
    when 'threeRemain'
      if deck_type == nil
        deck_type = 'standard'
      end
    when 'reduction'
      deck_type = 'token'
    end
    self.game_type = game_type
    @player = Player.new 1
    @deck = Deck.new deck_type, deck_count
  end

  def game_type=(type)
    if type == 'threeRemain'
      @game_type = type

    elsif type == 'reduction'
      @game_type = type

    # Eventually I would like to introduce other game types here.

    else
      raise ArgumentError, "Unsupported game_type value"
    end
  end

  def play

    #setup necessary local variables
    reduction_deck = @deck.deck_list

    #begin three remain deck reduction
    puts "Initial deck size: #{deck}"
    until reduction_deck.size <= 3 do
      reduction_deck = CardArray.split_shuffle reduction_deck
      reduction_deck.each do |token|
        token.print
      end
      reduction_deck = reduction_deck.reverse
    end
    @deck.deck_list = reduction_deck
  end
end
