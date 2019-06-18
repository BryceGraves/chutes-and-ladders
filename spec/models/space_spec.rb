require "rails_helper"

RSpec.describe Space do
  let(:valid_space) { FactoryBot.build_stubbed(:space) }

  describe "Space Validation" do
    context "A space is valid if" do
      it "It has a type of empty" do
        valid_space.space_type = "empty"

        expect(valid_space).to be_valid
      end

      it "It has a type of chute" do
        valid_space.space_type = "chute"

        expect(valid_space).to be_valid
      end

      it "It has a type of ladder" do
        valid_space.space_type = "ladder"

        expect(valid_space).to be_valid
      end

      it "It has a destination of an integer" do
        valid_space.destination = 42

        expect(valid_space).to be_valid
      end
    end

    context "A space is invalid if" do
      it "It has a type that isn't empty, chute, or ladder" do
        valid_space.space_type = "FAKE TYPE"

        expect(valid_space).to_not be_valid
        expect(valid_space.errors[:space_type]).to eq(["is not included in the list"])
      end

      it "It has a destination of an below 0" do
        valid_space.destination = -42

        expect(valid_space).to_not be_valid
        expect(valid_space.errors[:destination]).to eq(["must be greater than 0"])
      end

      it "It has a destination of an above 100" do
        valid_space.destination = 101

        expect(valid_space).to_not be_valid
        expect(valid_space.errors[:destination]).to eq(["must be less than 101"])
      end
    end
  end

end
