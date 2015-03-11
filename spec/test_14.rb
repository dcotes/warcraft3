require_relative 'spec_helper'

# Enhancement #4, adding lumber to barracks
describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "has and knows its lumber" do
    expect(@barracks.lumber).to eq(500)
  end
end