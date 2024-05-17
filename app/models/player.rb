class Player < ApplicationRecord
  belongs_to :team # Игрок принадлежит команде
  has_many :player_metrics # У игрока много показателей в матчах
  has_many :metrics, through: :player_metrics # У игрока много показателей через player_metrics

  # Метод для отметки выполнения показателя в матче
  def mark_metric_in_match(metric, match)
    PlayerMetric.create(player: self, match: match, metric: metric)
  end

  # Метод для проверки выполнения показателя хотя бы раз за последние 5 матчей команды
  def metric_achieved_in_last_5_matches?(metric)
    recent_matches = self.team.matches.order(date: :desc).limit(5).pluck(:id)
    PlayerMetric.where(player: self, metric: metric, match_id: recent_matches).exists?
  end
end
