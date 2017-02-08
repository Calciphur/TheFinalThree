require './token'
require './modules/CardModule'

class Card < Token

  attr_reader :suit, :rank

  def initialize(rank, suit)
    self.suit = suit
    self.rank = rank
  end

  def print
    "#{@rank} of #{@suit}s"
  end

  private

  def suit=(suit)
    if CardModule::SUITS.include? suit
      @suit = suit
    else
      raise ArgumentError, "invalid value for suit"
    end
  end

  def rank=(rank)
    if CardModule::RANKS.include? rank
      @rank = rank
    else
      raise ArgumentError, "invalid value for rank"
    end
  end
  
end
