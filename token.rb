class Token
  attr_reader :id

  def initialize(id)
    self.id = id
  end

  def print
    "Token: #{@id}"
  end

  def id=(id)
    @id = id
  end

end
