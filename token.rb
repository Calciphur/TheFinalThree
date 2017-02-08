class Token
  attr_reader :id

  def initialize(id)
    self.id = id
  end

  def print
    "Token: #{@id}"
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
