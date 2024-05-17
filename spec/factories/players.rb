FactoryBot.define do
  factory :player do
    name { "Player Name" }
    association :team
  end
end