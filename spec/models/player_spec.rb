require "rails_helper"

RSpec.describe Player do
  let(:valid_player) { FactoryBot.build_stubbed(:player) }

  describe "Player Validation" do
    context "A player is valid if" do
      it "It has a name" do
        valid_player.name = "FAKE PLAYER"

        expect(valid_player).to be_valid
      end

      it "It has a position of an integer" do
        valid_player.position = 1

        expect(valid_player).to be_valid
      end
    end

    context "A player is invalid if" do
      it "It has a blank name" do
        valid_player.name = ""
  
        expect(valid_player).not_to be_valid
        expect(valid_player.errors[:name]).to eq(["can't be blank"])
      end
  
      it "It has a nil name" do
        valid_player.name = nil
  
        expect(valid_player).not_to be_valid
        expect(valid_player.errors[:name]).to eq(["can't be blank"])
      end
  
      it "It has a position that isn't an integer" do
        valid_player.position = 0.5
  
        expect(valid_player).not_to be_valid
        expect(valid_player.errors[:position]).to eq(["must be an integer"])
      end
    end
  end

  describe "Player Functionality" do
    context "Player Position" do
      it "A player can set it's position" do
        valid_player.position = 42

        expect(valid_player.position).to eq(42)
      end
    end

    context "Player Movement" do
      it "A player can move forward" do
        expect(valid_player.position).to eq(1)

        valid_player.move(7)

        expect(valid_player.position).to eq(8)
      end

      it "A player can move backwards (though this will never be done)" do
        valid_player.move(-4)

        expect(valid_player.position).to eq(1)
      end

      it "A player can't move past position 100" do
        valid_player.position = 90

        expect(valid_player.position).to eq(90)

        valid_player.move(42)

        expect(valid_player.position).not_to eq(101)
      end

      it "A player can't move below a position of 1 (this is a sanity check)" do
        valid_player.position = 1

        expect(valid_player.position).to eq(1)

        valid_player.move(-5)

        expect(valid_player.position).not_to eq(-4)
      end
    end
  end

end
