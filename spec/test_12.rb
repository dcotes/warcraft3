require_relative 'spec_helper'


describe Unit do

  before :each do
    @unit = Unit.new(100, 5)    
  end

  describe "#dead?" do 
    it "should return false if unit has > 0 health points" do
      expect(@unit.dead?).to be_falsey
    end

    it "should return true if unit has 0 health points" do 
      @unit.should_receive(:health_points).and_return(0)
      expect(@unit.dead?).to be_truthy 
    end
  end
end
