FactoryBot.define do
  factory :game, class: Game do
    name { 'FAKE GAME' }
    current_player { 0 }
    players { [] }
    spaces { GamesHelper.generate_spaces }

    trait :complete do
      players do
        [
          Player.new(name: 'FAKE PLAYER ONE', position: Player::END_POSSITION)
        ]
      end
    end

    trait :has_players do
      players do
        Array.new(5) do |i|
          Player.new(
            name: "FAKE PLAYER #{i.humanize.upcase}",
            position: Player::START_POSSITION
          )
        end
      end
    end
  end
end
