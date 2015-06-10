class CreatePlayerInMatches < ActiveRecord::Migration
  def change
    create_table :player_in_matches do |t|
      t.integer :player_id
      t.integer :match_id
      t.boolean :win
      t.integer :result

      t.timestamps null: false
    end
  end
end
