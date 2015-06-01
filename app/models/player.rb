class Player < ActiveRecord::Base

  def self.players_matches
    Match.where("player_A_id = ? OR player_B_id = ?", self.id, self.id)
  end

	mount_uploader :photo, AvatarUploader

	def avatar=(obj)
    super(obj)
    # Put your callbacks here, e.g.
    self.moderated = false
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :matches, class_name: "Match"

  validates_presence_of :first_name, :email

end
