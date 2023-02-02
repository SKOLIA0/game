FactoryBot.define do
  factory :match_participation do
    match
    player
    lucky_pass { [true, false].sample }
    running_10_km { [true, false].sample }
  end
end
