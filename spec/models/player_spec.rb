require 'rails_helper'

RSpec.describe Player, type: :model do
  let!(:team) { create(:team) } # Создаем команду
  let!(:player) { create(:player, team: team) } # Создаем игрока, связанного с командой
  let!(:metric) { create(:metric) } # Создаем показатель
  let!(:matches) { create_list(:match, 5, team: team) } # Создаем список из 5 матчей, связанных с командой

  describe '#mark_metric_in_match' do
    it 'marks the metric for the player in the match' do
      # Проверяем, что метод корректно отмечает выполнение показателя игроком в матче
      player.mark_metric_in_match(metric, matches.first)
      expect(PlayerMetric.where(player: player, match: matches.first, metric: metric).exists?).to be_truthy
    end
  end

  describe '#metric_achieved_in_last_5_matches?' do
    it 'returns true if metric was achieved in the last 5 matches' do
      # Проверяем, что метод возвращает true, если показатель был достигнут хотя бы раз за последние 5 матчей
      player.mark_metric_in_match(metric, matches.first)
      expect(player.metric_achieved_in_last_5_matches?(metric)).to be_truthy
    end

    it 'returns false if metric was not achieved in the last 5 matches' do
      # Проверяем, что метод возвращает false, если показатель не был достигнут за последние 5 матчей
      expect(player.metric_achieved_in_last_5_matches?(metric)).to be_falsey
    end
  end
end
