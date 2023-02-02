class CreateTeamParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :team_participations do |t|
      t.integer :team_id
      t.integer :match_id
      t.integer :player_id

      t.timestamps
    end
  end
end
