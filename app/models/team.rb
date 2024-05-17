class Team < ApplicationRecord
  has_many :players # У команды много игроков
  has_many :matches # У команды много матчей
end
