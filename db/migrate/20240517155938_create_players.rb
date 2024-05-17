class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    # Создаем таблицу для игроков
    create_table :players do |t|
      t.string :name # Имя игрока
      t.references :team, foreign_key: true # Ссылка на команду

      t.timestamps # Временные метки (created_at и updated_at)
    end
  end
end
