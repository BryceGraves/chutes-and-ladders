require "rails_helper"

RSpec.describe "Adding Player to Game Flow", type: :system do
  #FIXME: Change this to be better and match a better flow. Mainly be better
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
