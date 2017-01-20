class Game

  attr_reader :player, :deck, :game_type

  def initialize(game_type='threeRemain', deck_type='standard', deck_count=52)
    self.game_type = game_type
    @player = Player.new 1
    @deck = Deck.new deck_type, deck_count
  end

  def game_type=(type)
    if type == 'threeRemain'
      @game_type = type

    # Eventually I would like to introduce other game types here.
    
    else
      raise ArgumentError, "Currently, game_type can only == threeRemain"
    end
  end

end
