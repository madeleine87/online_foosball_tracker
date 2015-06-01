class Match < ActiveRecord::Base
	belongs_to :player_A, class_name: "Player", foreign_key: "player_A_id"
	belongs_to :player_B, class_name: "Player", foreign_key: "player_B_id"
end
