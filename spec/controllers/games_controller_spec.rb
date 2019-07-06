require 'rails_helper'

#TODO: add tests for all controller methods
#TODO: turn describe into success and failure and use context for each controller
RSpec.describe GamesController, type: :controller do
  let(:all_games) { create_list(:game, 3) }

  describe "Games index page" do
    it "Returns status code 200" do
      get :index
      expect(response.status).to eq(200)
    end

    it "Returns all existing games" do
      get :index
      expect(assigns(:games)).to eq(all_games)
    end
  end

end
