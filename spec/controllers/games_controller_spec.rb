require 'rails_helper'

#TODO: add tests for all controller methods
RSpec.describe GamesController, type: :controller do
  describe "Games index page" do
    it "Returns status code 200" do
      get :index
      expect(response.status).to eq(200)
    end

    it "Returns all existing games" do
      expect(Game).to receive(:all)
      get :index
    end
  end
end
