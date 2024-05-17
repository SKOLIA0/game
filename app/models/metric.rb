class Metric < ApplicationRecord
  has_many :player_metrics # У показателя много показателей игроков
  has_many :players, through: :player_metrics # У показателя много игроков через player_metrics

  # Метод для получения топ-5 игроков по показателю в конкретной команде
  def top_5_players_in_team(team)
    Player.joins(:player_metrics)
          .where(player_metrics: { metric: self, players: { team: team } })
          .group('players.id')
          .order(Arel.sql('COUNT(player_metrics.id) DESC'))
          .limit(5)
  end

  # Метод для получения топ-5 игроков по показателю среди всех команд
  def top_5_players
    Player.joins(:player_metrics)
          .where(player_metrics: { metric: self })
          .group('players.id')
          .order(Arel.sql('COUNT(player_metrics.id) DESC'))
          .limit(5)
  end
end
