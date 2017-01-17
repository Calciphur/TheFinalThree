class Token
  @@token_count = 0

  def initialize
    @@token_count += 1
    @id = @@token_count

  end

  def print
    "Token: #{@id}"
  end
end