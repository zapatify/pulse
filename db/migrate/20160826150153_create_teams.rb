class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :team_description
      t.references :division, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
