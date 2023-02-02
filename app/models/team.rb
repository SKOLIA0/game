class Team < ApplicationRecord
  has_many :team_participations
  has_many :matches, through: :team_participations
  has_many :players, through: :match_participations
end
