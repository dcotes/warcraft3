require_relative 'spec_helper'

# Enhancement 1
# In most strategy games, like Warcraft III, buildings can also be attacked by units. Since a barracks is a building, it has substantial more HP (500) 
# To make matters worse, a Footman does only HALF of its AP as damage to a Barracks. This is because they are quite ineffective against buildings.

# Note: The damage amount should be an integer (Fixnum). Take the ceil division result.

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#damage" do
    it "should reduce the unit's health_points by half of the attack_power specified (the unit's normal attack power)" do
      @barracks.damage(10)
      expect(@barracks.health_points).to eq(495) # HP started at 100 but just got hit by 12 (see subject)
    end
  end
  
end