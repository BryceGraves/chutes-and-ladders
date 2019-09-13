require 'rails_helper'

RSpec.describe 'Play Game Flows', type: :system do
  context 'Play Game Flow' do
    before(:each) do
      create(:game, :has_players)
    end

    it 'A user can navigate to a game' do
      visit games_path
      click_on('View FAKE GAME')
      click_on('Play Game')

      expect(page).to have_tag('div', :with => { :class => 'game-board' })
    end
  end
end
