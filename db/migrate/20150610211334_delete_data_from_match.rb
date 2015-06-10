class DeleteDataFromMatch < ActiveRecord::Migration
  def change
  	remove_column :matches, :result_player_A
  	remove_column :matches, :result_player_B
  	remove_column :matches, :player_A_id
  	remove_column :matches, :player_B_id
  end
end
