class CreateMatchParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :match_participations do |t|
      t.integer :team_id
      t.integer :player_id
      t.integer :match_id
      t.boolean :lucky_pass
      t.boolean :running_10_km

      t.timestamps
    end
  end
end
