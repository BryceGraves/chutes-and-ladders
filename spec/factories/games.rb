FactoryBot.define do
  factory :game, class: Game do
    name { "FAKE GAME" }
    current_player { 0 }
    players { [] }
    spaces { GamesHelper::generate_spaces }

    trait :has_players do
      players {
        [
          Player.new(name: "FAKE PLAYER ONE", position: 1),
          Player.new(name: "FAKE PLAYER TWO", position: 1),
          Player.new(name: "FAKE PLAYER THREE", position: 1),
          Player.new(name: "FAKE PLAYER FOUR", position: 1),
          Player.new(name: "FAKE PLAYER FIVE", position: 1)
        ]
      }
    end
  end

end