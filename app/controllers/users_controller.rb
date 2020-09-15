class UsersController < ApplicationController

	def follow_user
		user_following = current_user.user_followings.new(following_id:params[:id])
		if user_following.save
			redirect_to questions_path, notice: 'User Followed successfully.' 
		else
			redirect_to questions_path, notice: user_following.errors.messages[:user].to_sentence      
		end
	end

end
