class User < ApplicationRecord

	devise :database_authenticatable, :registerable

	has_many :questions
	has_many  :answers
	has_many :user_topics
	has_many :topics, through: :user_topics
	has_many :user_followings
	has_many :following, through: :user_followings



end
