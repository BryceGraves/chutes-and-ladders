require 'rails_helper'

RSpec.describe 'Game Flows', type: :system do
  context 'Create Game Flow' do
    before(:each) do
      visit new_game_path
    end

    it 'A user can create a game' do
      fill_in 'Name', with: 'FAKE GAME'
      click_on('Create Game')

      expect(page).to have_content('FAKE GAME')
    end

    it 'A user cannot create a game with a blank name' do
      fill_in 'Name', with: ''
      click_on('Create Game')

      expect(page).to have_content("can't be blank")
    end
  end

  context 'Delete Game Flow' do
    before(:each) do
      create(:game, :complete)
      visit games_path
    end

    after(:each) do
      expect(page).not_to have_content('FAKE GAME')
    end

    it 'A user can delete a game from games index' do
      click_on('Delete Game')
    end

    it 'A user can delete a game after it is complete' do
      click_on('View FAKE GAME')
      click_on('Play Game')
      click_on('Delete Game')
    end
  end
end
