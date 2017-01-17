require './token'
class Card < Token

  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

  def print
    "#{@rank} of #{@suit}s"
  end
end