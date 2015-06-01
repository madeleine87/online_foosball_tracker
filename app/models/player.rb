class Player < ActiveRecord::Base

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
  has_many :matches
  validates_presence_of :first_name, :email
end
