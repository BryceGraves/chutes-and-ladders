require 'rails_helper'

RSpec.describe 'Play Game Flows', type: :system do
  context 'Play Game Flow' do
    before(:each) do
      @game = create(:game, :has_players)
    end

    it 'A user can navigate to play path of a created game' do
      visit games_path
      click_on('View FAKE GAME')
      click_on('Play Game')

      expect(page).to have_tag('div', :with => { :class => 'game-board' })
    end

    it 'A user can play a turn' do
      visit game_play_index_path(@game.id)

      player_one_position = find_by_id('scoreboard-table').first('tr').find('td', :text =>/Position: \d+/)
      _, player_starting_position_string = player_one_position.text.split(' ')
      
      click_on('Take Turn')

      player_one_position = find_by_id('scoreboard-table').first('tr').find('td', :text =>/Position: \d+/)
      _, player_new_position_string = player_one_position.text.split(' ')

      expect(player_new_position_string).not_to eq(player_starting_position_string)
    end
  end
end
