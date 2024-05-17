class PlayerMetric < ApplicationRecord
  belongs_to :player # Показатель игрока принадлежит игроку
  belongs_to :match # Показатель игрока принадлежит матчу
  belongs_to :metric # Показатель игрока принадлежит показателю
end
