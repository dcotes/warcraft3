require_relative 'spec_helper'

describe SeigeEngine do
  before :each do
    @seigeengine = SeigeEngine.new    
  end


  describe "#attack!" do
    it "if a seige engine attacks a barracks it does double (100 AP) damage" do
      enemy_unit = Barracks.new
      enemy_unit.should_receive(:damage).with(100)
      @seigeengine.attack!(enemy_unit)
    end
  end

  describe "#attack!" do
    it "if a seige engine attacks another seige engine it does normal (50 AP) damage" do
      enemy_unit = SeigeEngine.new
      enemy_unit.should_receive(:damage).with(50)
      @seigeengine.attack!(enemy_unit)
    end
  end

  describe "#attack!" do 
    it "returns false if a seige engine attacks a unit that is not a barracks or a seige engine" do
      enemy_unit = Footman.new
      expect(@seigeengine.attack!(enemy_unit)).to be_falsey
    end
  end

  describe "#damage" do
    it "should reduce the seige engine's health_points by the attack_power specified" do
      @seigeengine.damage(100)
      expect(@seigeengine.health_points).to eq(300) # starts at 400
    end
  end
end

  