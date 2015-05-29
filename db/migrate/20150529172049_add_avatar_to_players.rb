class AddAvatarToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :photo, :string
  end
end
