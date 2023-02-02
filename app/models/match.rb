class Match < ApplicationRecord
  has_many :players, through: :match_participations
  has_many :match_participations, dependent: :destroy
end
