class Usuario < ApplicationRecord
	validates_uniqueness_of :username
	has_many :projetos


  acts_as_voter


	has_many :active_relationships,  class_name:  "Relationship",
                                   foreign_key: "follower_id",
                                   dependent:   :destroy


  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy

	has_many :following, through: :active_relationships, source: :followed
	has_many :followers, through: :passive_relationships, source: :follower

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# Follows a user.
	def follow(outro_usuario)
		following << outro_usuario
	end


 # Unfollows a user.
 	def unfollow(outro_usuario)
		following.delete(outro_usuario)
	end

	# Returns true if the current user is following the other user.
	def following?(outro_usuario)
		following.include?(outro_usuario)
	end

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


end
