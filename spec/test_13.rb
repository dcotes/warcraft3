require_relative 'spec_helper'

describe Unit do
  before :each do
    @unit = Unit.new(100, 5)    
  end

  describe "#attack!" do
    it "cannot attack an enemy if it itself is dead" do
      enemy_unit = Unit.new(10, 5)
      enemy_unit.should_receive(:dead?).and_return(false)
      @unit.should_receive(:dead?).and_return(true)
      expect(@unit.attack!(enemy_unit)).to be_falsey
    end
  end

  describe "#attack!" do
    it "cannot attack an enemy if the enemy is dead" do
      enemy_unit = Unit.new(10, 5)
      enemy_unit.should_receive(:dead?).and_return(true)
      @unit.should_receive(:dead?).and_return(false)
      expect(@unit.attack!(enemy_unit)).to be_falsey
    end
  end
end