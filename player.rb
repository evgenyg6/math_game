class Player

  def initialize(id)
    @life = 3
    @id = id
  end

  def lose_life(player)
    @life -= 1
  end

  def life
    @life
  end

  def id
    @id
  end
end