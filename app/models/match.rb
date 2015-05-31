class Match < ActiveRecord::Base
	belongs_to :player_A, class_name: "Player"
	belongs_to :player_B, class_name: "Player"
end
