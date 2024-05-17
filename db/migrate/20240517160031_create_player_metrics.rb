class CreatePlayerMetrics < ActiveRecord::Migration[5.2]
  def change
    # Создаем таблицу для связывания игроков, матчей и показателей
    create_table :player_metrics do |t|
      t.references :player, foreign_key: true # Ссылка на игрока
      t.references :match, foreign_key: true # Ссылка на матч
      t.references :metric, foreign_key: true # Ссылка на показатель

      t.timestamps # Временные метки (created_at и updated_at)
    end
  end
end
