require 'rails_helper'

# TODO: add seed data to remove the need to build a game for each test.
RSpec.describe 'Player Flows', type: :system do
  let(:game) { create(:game) }

  context 'Create Player Flow' do
    before(:each) do
      visit game_path(game)
      click_on('Add Player')
    end

    it 'A user can add a player to a created game' do
      fill_in 'Name', with: 'FAKE PLAYER NAME'
      click_on('Create Player')

      expect(page).to have_content('FAKE PLAYER NAME')
    end

    it 'A user cannot add a player without a name to a created game' do
      fill_in 'Name', with: ''
      click_on('Create Player')

      expect(page).to have_content("can't be blank")
    end
  end
end
