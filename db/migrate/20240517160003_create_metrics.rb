class CreateMetrics < ActiveRecord::Migration[5.2]
  def change
    # Создаем таблицу для показателей
    create_table :metrics do |t|
      t.string :name # Название показателя

      t.timestamps # Временные метки (created_at и updated_at)
    end
  end
end
