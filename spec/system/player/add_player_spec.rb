require "rails_helper"

#TODO: add seed data to remove the need to build a game for each test.
RSpec.describe "Adding Player to Game Flow", type: :system do
  it "A user can add a player to a created game" do
    visit new_game_path
    fill_in "Name", with: "FAKE GAME NAME"
    click_on("Create Game")
    click_on("Add Player")
    fill_in "Name", with: "FAKE PLAYER NAME"
    click_on("Create Player")
    expect(page).to have_content("FAKE PLAYER NAME")
  end

  it "A user cannot add a player without a name to a created game" do
    visit new_game_path
    fill_in "Name", with: "FAKE GAME NAME"
    click_on("Create Game")
    click_on("Add Player")
    fill_in "Name", with: ""
    click_on("Create Player")
    expect(page).to have_content("can't be blank")
  end
end
