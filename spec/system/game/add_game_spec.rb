require 'rails_helper'

RSpec.describe 'Create Game Flow', type: :system do
  context 'After navigating to create a game page' do
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
end
