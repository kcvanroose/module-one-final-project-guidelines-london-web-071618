class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :player_id
      t.integer :character_id
      t.boolean :win?
      t.string :map
    end
  end
end
