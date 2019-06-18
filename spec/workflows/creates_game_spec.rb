require "rails_helper"

RSpec.describe CreatesGame do
  describe "Game Creation Success" do
    let(:game_creator) { CreatesGame.new }
    let(:game_creator_with_name) { CreatesGame.new(name: "FAKE GAME") }
    let(:bad_game_creator_blank_name) { CreatesGame.new(name: "") }
    let(:bad_game_creator_nil_name) { CreatesGame.new(name: nil) }

    context "When a game is created without a name" do
      it "It has a name of Unnamed Game" do
        game_creator.build

        expect(game_creator.game.name).to eq("Unnamed Game")
      end

      it "It has current player of zero" do
        game_creator.build

        expect(game_creator.game.current_player).to eq(0)
      end

      it "It has no players" do
        game_creator.build

        expect(game_creator.game.players.empty?).to eq(true)
      end

      it "It has a board of 100 spaces" do
        game_creator.build

        expect(game_creator.game.spaces.size).to eq(100)
      end
    end

    context "When a game is created with a name" do
      it "It has the name given" do
        game_creator_with_name.build

        expect(game_creator_with_name.game.name).to eq("FAKE GAME")
      end

      it "It has current player of zero" do
        game_creator.build

        expect(game_creator.game.current_player).to eq(0)
      end

      it "It has no players" do
        game_creator_with_name.build

        expect(game_creator_with_name.game.players.empty?).to eq(true)
      end

      it "It has a board of 100 spaces" do
        game_creator_with_name.build

        expect(game_creator_with_name.game.spaces.size).to eq(100)
      end
    end
  end

  describe "Game Creation Failure" do
    context "When a game is made with a blank name" do
      it "It returns an error" do
        bad_creator = CreatesGame.new(name: "")
        bad_creator.create
        expect(bad_creator.game.errors.messages[:name][0]).to match("can't be blank")
      end
    end

    context "When a game is made with a nil name" do
      it "It returns an error" do
        bad_creator = CreatesGame.new(name: nil)
        bad_creator.create
        expect(bad_creator.game.errors.messages[:name][0]).to match("can't be blank")
      end
    end
  end
  
end
