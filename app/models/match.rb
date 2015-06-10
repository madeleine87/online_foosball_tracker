class Match < ActiveRecord::Base

  has_many :player_in_matches
  has_many :players, class_name: "Player", :through => :player_in_matches


	# validates :result_player_A, numericality: { greater_than: 0 }
	# validates :result_player_B, numericality: { greater_than: 0 }

  # validate :result_10
  # validate :result_draw

  # validate :the_same_player


  # private
  # def result_10
  # 	if(result_player_A != 10 && result_player_B != 10)
  # 		errors.add(:base, "One of the players has to have 10 points")
  # 	end
  # end

  # def result_draw
  # 	if (result_player_A == 10 && result_player_B == 10)
  # 		errors.add(:base, "Two players can't have 10 points")
  # 	end
  # end

  # def the_same_player
  #   if (player_A == player_B)
  #     errors.add(:base, "Player A and Player B can't be the same player!")
  #   end
  # end
end
