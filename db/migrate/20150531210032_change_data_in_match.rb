class ChangeDataInMatch < ActiveRecord::Migration
  def change
  	rename_column :matches, :resultA, :result_player_A
  	rename_column :matches, :resultB, :result_player_B
  	rename_column :matches, :player_id, :player_A_id
  end
end
