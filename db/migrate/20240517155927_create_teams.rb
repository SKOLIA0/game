class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    # Создаем таблицу для команд
    create_table :teams do |t|
      t.string :name# Название команды

      t.timestamps # Временные метки (created_at и updated_at)
    end
  end
end
