class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    # Создаем таблицу для матчей
    create_table :matches do |t|
      t.references :team, foreign_key: true # Ссылка на команду
      t.date :date # Дата матча

      t.timestamps # Временные метки (created_at и updated_at)
    end
  end
end
