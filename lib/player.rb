class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp, :game

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def deduct_hp
    @hp -= 10
  end

  # def attack(player)
  #   @game.attack(player)
  # end

end
