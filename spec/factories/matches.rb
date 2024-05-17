FactoryBot.define do
  factory :match do
    association :team
    date { Date.today }
  end
end