class UsersController < ApplicationController
	def show
		@nickname = current_user.Nickname
		@walks = Walk.where(user_id: current_user.id).page(params[:id]).per(5).order("created_at DESC")
	end
end
