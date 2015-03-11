class Barracks

  attr_accessor :gold, :food, :lumber, :health_points
  # get_gold == self.gold == gold
  # set_gold == self.gold == @gold

  # def get_gold 
    
  # end 
  # def set_gold 
    
  # end 


  def initialize
    @gold = 1000 
    @food= 80
    @lumber = 500
    @health_points = 500
  end

  def can_train_footman?
    gold >= 135 && food >= 2 
  end

  def train_footman
    if can_train_footman? == true
    @gold -= 135
    @food -= 2
    Footman.new
    else 
      nil
    end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5 
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def damage(attack_power)
    @health_points -= (attack_power / 2)
  end

  def can_build_seige_machine?
    gold >= 200 && food >= 3 && lumber >= 60
  end

  def build_seige_machine
    if can_build_seige_machine? == true
      @gold -= 

end

