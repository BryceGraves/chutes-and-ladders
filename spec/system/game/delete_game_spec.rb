require 'rails_helper'

RSpec.describe 'Delete Game Flow', type: :system do
  it 'A user can delete a game from games index' do
    visit new_game_path
    fill_in 'Name', with: 'FAKE GAME'
    click_on('Create Game')
    visit games_path
    expect(page).to have_content('FAKE GAME')

    click_on('Delete Game')
    expect(page).not_to have_content('FAKE GAME')
  end

  it 'A user can delete a game after it is complete' do
    create(:game, :complete)

    visit games_path
    expect(page).to have_content('FAKE GAME')

    click_on('View FAKE GAME')
    click_on('Play Game')
    click_on('Delete Game')

    expect(page).not_to have_content('FAKE GAME')
  end
end
