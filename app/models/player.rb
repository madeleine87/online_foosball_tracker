class Player < ActiveRecord::Base

  def players_matches
    Match.where("player_A_id = ? OR player_B_id = ?", self.id, self.id)
  end

  def matches_won
    Match.where("(player_A_id = ? and result_player_A = 10) OR (player_B_id = ? and result_player_B = 10)", self.id, self.id)
  end

  def matches_lost
    Match.where("(player_A_id = ? and result_player_A < 10) OR (player_B_id = ? and result_player_B < 10)", self.id, self.id)
  end

	mount_uploader :photo, AvatarUploader



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :matches, class_name: "Match"

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
