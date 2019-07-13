require "rails_helper"

RSpec.describe Game do
  let(:valid_game) { FactoryBot.build_stubbed(:game) }
  let(:valid_game_with_players) { FactoryBot.build_stubbed(:game, :has_players) }

  describe "Game Validation" do
    context "A game is valid if" do
      it "It has a name" do
        valid_game.name = "FAKE GAME"

        expect(valid_game).to be_valid
      end

      it "It has a current player index of an integer" do
        valid_game.current_player = 0

        expect(valid_game).to be_valid
      end

      it "It has players" do
        expect(valid_game_with_players.players.empty?).to eq(false)

        expect(valid_game).to be_valid
      end
    end

    context "A game is invalid if" do
      it "It has a blank name" do
        valid_game.name = ""

        expect(valid_game).not_to be_valid
        expect(valid_game.errors[:name]).to eq(["can't be blank"])
      end

      it "It has a nil name" do
        valid_game.name = nil

        expect(valid_game).not_to be_valid
        expect(valid_game.errors[:name]).to eq(["can't be blank"])
      end

      it "It has a current player index of nil" do
        valid_game.current_player = nil

        expect(valid_game).not_to be_valid
        expect(valid_game.errors[:current_player]).to eq(["can't be blank", "is not a number"])
      end

      it "It has a current player index that is less than zero" do
        valid_game.current_player = -1

        expect(valid_game).not_to be_valid
        expect(valid_game.errors[:current_player]).to eq(["must be greater than or equal to 0"])
      end

      it "It has a current player index of a float" do
        valid_game.current_player = 0.5

        expect(valid_game).not_to be_valid
        expect(valid_game.errors[:current_player]).to eq(["must be an integer"])
      end
    end
  end

  describe "Game Functionality" do
    context "A game has attribute current_player which acts as an index" do
      it "It is both readable and writable" do
        valid_game.current_player = 0

        expect(valid_game.current_player).to eq(0)
      end
    end

    context "A game can change who's currently playing" do
      it "Change turn increases the current player index by one" do
        expected_current_player = valid_game.current_player + 1

        valid_game.change_turn

        expect(valid_game.current_player).to eq(1)
      end

      it "Changing turn changes the player that get_current_player returns" do
        prev_current_player = valid_game_with_players.players.first

        valid_game_with_players.change_turn

        expect(valid_game_with_players.get_current_player).to_not eq(prev_current_player)
      end

      it "Get current player successfully uses circular array functionality" do
        expected_current_player = valid_game_with_players.players[0]
        valid_game_with_players.current_player = valid_game_with_players.players.size - 1

        expect(valid_game_with_players.get_current_player).to_not eq(expected_current_player)

        valid_game_with_players.change_turn

        expect(valid_game_with_players.get_current_player).to eq(expected_current_player)
      end
    end

    context "A game allows the player to roll" do
      it "Calling roll changes the position of the current player" do
        valid_game_with_players.roll

        expect(valid_game_with_players.players[0].read_attribute(:position)).to_not eq(1)
      end

      it "Calling roll changes who the current player is" do
        old_current_player = valid_game_with_players.current_player

        valid_game_with_players.roll

        expect(valid_game_with_players.current_player).to_not eq(old_current_player)
      end
    end

    context "Updating position" do
      it "Player position updated to end of chute or ladder when landed on" do
        valid_game_with_players.get_current_player.set_position(15)

        valid_game_with_players.update_position_for(valid_game_with_players.get_current_player)

        expect(valid_game_with_players.get_current_player.position).to eq(26)
      end
    end

    context "A game can check if a player has won" do
      it "Winner returns true if a player has won (is on space 100)" do
        valid_game_with_players.get_current_player.set_position(100)

        expect(valid_game_with_players.winner?).to eq(true)
      end

      it "Winner returns false if no player has won" do
        expect(valid_game_with_players.winner?).to eq(false)
      end
    end
  end

end
