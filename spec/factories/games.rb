FactoryBot.define do
  STARTING = 1
  ENDING = 100

  factory :game, class: Game do
    name { 'FAKE GAME' }
    current_player { 0 }
    players { [] }
    spaces { GamesHelper.generate_spaces }

    trait :complete do
      players do
        [
          Player.new(name: 'FAKE PLAYER ONE', position: ENDING)
        ]
      end
    end

    trait :has_players do
      players do
        [
          Player.new(name: 'FAKE PLAYER ONE', position: STARTING),
          Player.new(name: 'FAKE PLAYER TWO', position: STARTING),
          Player.new(name: 'FAKE PLAYER THREE', position: STARTING),
          Player.new(name: 'FAKE PLAYER FOUR', position: STARTING),
          Player.new(name: 'FAKE PLAYER FIVE', position: STARTING)
        ]
      end
    end
  end
end
