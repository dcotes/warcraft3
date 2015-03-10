class Barracks

  attr_accessor :gold, :food
  # get_gold == self.gold == gold
  # set_gold == self.gold == @gold

  # def get_gold 
    
  # end 
  # def set_gold 
    
  # end 


  def initialize
    @gold = 1000 
    @food= 80
  end

  def can_train_footman?
    gold >= 135 && food >= 2 ? true : false
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
    gold >= 90 && food >= 5 ? true : false
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

end

