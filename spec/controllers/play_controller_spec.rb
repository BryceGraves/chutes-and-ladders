require 'rails_helper'

#TODO: add tests for all controller methods
RSpec.describe PlayController, type: :controller do
  let(:game) { FactoryBot.create(:game, :has_players) }

  #This sets the referrer in play update to the created game above
  #TODO: figure out if there is a better way to set this
  before do
    allow_any_instance_of(ActionController::TestRequest).to receive(:referrer) do
      "/game/#{game.id}/play"
    end
  end

  describe "Play index page" do
    it "Returns status code 200 when valid game id is provided" do
      get :index, params: { game_id: game.id }
      expect(response.status).to eq(200)
    end

    it "Get call fails if game_id doesn't exist" do
      expect { get :index, params: { game_id: -1 } }.to raise_error(ActiveRecord::RecordNotFound, "Couldn't find Game with 'id'=-1")
    end
  end

  describe "Play update" do
    it "Updates game data" do
      game.roll
      patch :update, params: { game_id: game.id, id: game.id }
    end
  end

end
