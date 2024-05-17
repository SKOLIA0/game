require 'rails_helper'

RSpec.describe Metric, type: :model do
  let!(:team) { create(:team) } # Создаем команду
  let!(:players) { create_list(:player, 6, team: team) } # Создаем список из 6 игроков, связанных с командой
  let!(:metric) { create(:metric) } # Создаем показатель
  let!(:matches) { create_list(:match, 5, team: team) } # Создаем список из 5 матчей, связанных с командой

  before do
    # Перед выполнением тестов отмечаем выполнение показателя случайными игроками в случайных матчах
    players.each do |player|
      player.mark_metric_in_match(metric, matches.sample)
    end
  end

  describe '#top_5_players_in_team' do
    it 'returns the top 5 players by metric in the team' do
      top_players = metric.top_5_players_in_team(team)
      expect(top_players.length).to eq(5) # Проверяем количество уникальных игроков
      expect(top_players).to all(be_a(Player)) # Убеждаемся, что все элементы - объекты Player
    end
  end

  describe '#top_5_players' do
    it 'returns the top 5 players by metric overall' do
      top_players = metric.top_5_players
      expect(top_players.length).to eq(5) # Проверяем количество уникальных игроков
      expect(top_players).to all(be_a(Player)) # Убеждаемся, что все элементы - объекты Player
    end
  end
end
