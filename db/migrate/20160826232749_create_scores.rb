class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :team_id
      t.integer :division_id
      t.integer :wod1_score
      t.integer :wod1_place
      t.integer :wod2_score
      t.integer :wod2_place
      t.integer :wod3_score
      t.integer :wod3_place
      t.integer :wod4_score
      t.integer :wod4_place
      t.integer :wod5_score
      t.integer :wod5_place
      t.integer :overall_score
      t.integer :overall_place

      t.timestamps null: false
    end
  end
end
