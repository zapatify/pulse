class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.string :description
      t.string :gender

      t.timestamps null: false
    end
  end
end
