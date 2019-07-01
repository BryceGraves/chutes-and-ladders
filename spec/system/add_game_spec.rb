require "rails_helper"

RSpec.describe "Create Game Flow", type: :system do
  it "A user can create a game" do
    visit new_game_path
    fill_in "Name", with: "FAKE NAME"
    click_on("Create Game")
    expect(page).to have_content("FAKE NAME")
  end

  it "A user cannot create a game with a blank name" do
    visit new_game_path
    fill_in "Name", with: ""
    click_on("Create Game")
    expect(page).to have_content("can't be blank")
  end
end
