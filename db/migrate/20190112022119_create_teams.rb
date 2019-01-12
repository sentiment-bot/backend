class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :code
      t.integer :manager_id, foreign_key: true

      t.timestamps
    end
  end
end
