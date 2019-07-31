FactoryBot.define do
  factory :player, class: Player do
    name { 'FAKE PLAYER' }
    position { 1 }
    game { FactoryBot.build_stubbed(:game) }
  end
end