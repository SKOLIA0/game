FactoryBot.define do
  factory :team do
    team_name { Faker::Team.name }
  end
end
