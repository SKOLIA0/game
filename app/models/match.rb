class Match < ApplicationRecord
  belongs_to :team # Матч принадлежит команде
  has_many :player_metrics # В матче много показателей игроков
  has_many :players, through: :player_metrics # В матче много игроков через player_metrics
end
