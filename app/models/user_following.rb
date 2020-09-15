class UserFollowing < ApplicationRecord
	belongs_to :user
	belongs_to :following, class_name: "User"
	validates :user, uniqueness: {scope: :following_id, message: "Already Following"}

end
