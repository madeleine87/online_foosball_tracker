class PlayerInMatch < ActiveRecord::Base
	belongs_to :players
	belongs_to :matches
end
