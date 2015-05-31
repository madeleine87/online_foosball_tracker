class AddPlayerBToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :player_B_id, :integer
  end
end
