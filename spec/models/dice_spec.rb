require "rails_helper"

RSpec.describe Dice do
  describe "Rolling dice once" do
    it "Returns a value between 2 and 12" do
      expect(Dice.roll).to be_between(2, 12)
    end
  end

  describe "Rolling dice many times" do
    it "Always returns a value within the range of 2 and 12" do
      rolls = []
      1000.times { rolls << Dice.roll }
      expect(rolls).to all(be_between(2, 12))
    end
  end
end
