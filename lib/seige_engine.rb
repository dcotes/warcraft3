class SeigeEngine < Unit

  def initialize
    @health_points = 400
    @attack_power = 50
  end

  def attack!(enemy)
    if enemy.class == Barracks
      enemy.damage(attack_power * 2)
    elsif enemy.class == SeigeEngine
      enemy.damage(attack_power)
    else
      false
    end
  end
end
        


