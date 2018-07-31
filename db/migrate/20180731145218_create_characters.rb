class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string :role
      t.integer :health
      t.integer :armour
      t.integer :shield
      t.integer :difficulty
    end
  end
end
