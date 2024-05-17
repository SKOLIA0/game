FactoryBot.define do
  factory :player_metric do
    association :player
    association :match
    association :metric
  end
end