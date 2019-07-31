FactoryBot.define do
  STARTING = 1
  ENDING = 100

  factory :game, class: Game do
    name { 'FAKE GAME' }
    turn { 0 }
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
        Array.new(5) { |i| Player.new(name: "FAKE PLAYER #{i.humanize.upcase}", position: STARTING) }
      end
    end
  end
end
