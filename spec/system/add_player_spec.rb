require "rails_helper"

RSpec.describe "Adding Player to Game Flow", type: :system do
  #FIXME: Change this to be better and match a better flow. Mainly be better
  it "A user can add a player to an active game" do
    visit new_player_path
    fill_in "Name", with: "Mack"
    click_on("Create Player")
    visit players_path
    expect(page).to have_content("Mack")
  end
end
