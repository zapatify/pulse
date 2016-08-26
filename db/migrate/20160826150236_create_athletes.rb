class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :gender
      t.integer :age
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
