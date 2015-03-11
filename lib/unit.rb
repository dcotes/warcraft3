class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  

  def damage(attack_power)
    @health_points -= attack_power
  end

  def dead?
    health_points <= 0
  end

  def attack!(enemy)
    i_am_dead = dead?
    other_guy_is_dead = enemy.dead?
    return false if i_am_dead || other_guy_is_dead
    enemy.damage(attack_power)
  end
end
