class Player < ApplicationRecord
  has_many :match_participations
  has_many :teams, through: :team_participations

  def self.top_5_by_standard(standard, team = nil)
    # выбрать Top-5 игроков по конкретному показателю в конкретной команде и по всем командам в целом
    # Team.find_by(team_name: "Capitalist")
    # Team.find_by(team_name: "Communist")
    # :running_10_km или :lucky_pass
    players = if team.present?
               Player.joins(:match_participations)
                  .where(match_participations: { team_id: team.id })
                  .group(:id)
                  .order("SUM(match_participations.#{standard}) DESC")
                  .limit(5)
              else
                Player.joins(:match_participations)
                  .group(:id)
                  .order("SUM(match_participations.#{standard}) DESC")
                  .limit(5)
              end
  end

  def fulfill_standard?(match, standard)
    # отметить, что игрок выполнил такой-то показатель в матче
    # Match.last Match.find_by(id: 2) :running_10_km или :lucky_pass
    match_participations.where(match_id: match.id).find_by(standard =>  true).present?
  end

  def fulfill_standard_5_matches?(standard)
    # проверить выполнил ли игрок конкретный показатель хотя бы 1 раз за предыдущие 5 матчей команды
    # :running_10_km или :lucky_pass
    match_participations.order(created_at: :asc).limit(5).find_by(standard =>  true).present?
  end
end
