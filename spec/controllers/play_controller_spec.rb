require 'rails_helper'

#TODO: add tests for all controller methods
RSpec.describe PlayController, type: :controller do
  let(:game) { FactoryBot.create(:game, :has_players) }

  describe "Games index page" do
    it "Returns status code 200 when valid game id is provided" do
      get :index, params: { game_id: game.id }
      expect(response.status).to eq(200)
    end

    it "Get call fails if game_id doesn't exist" do
      expect { get :index, params: { game_id: -1 } }.to raise_error(ActiveRecord::RecordNotFound, "Couldn't find Game with 'id'=-1")
    end
  end
end
