class CreateScorecards < ActiveRecord::Migration
  def change
    create_table :scorecards do |t|
      t.string :athlete
      t.integer :wod1
      t.integer :wod2
      t.integer :wod3
      t.integer :wod4
      t.integer :wod5
      t.integer :overall

      t.timestamps null: false
    end
  end
end
