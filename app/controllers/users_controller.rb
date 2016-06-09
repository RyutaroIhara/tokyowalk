class UsersController < ApplicationController
	def show
		user = User.find(params[:id])
		@nickname = user.Nickname
		# @walks = Walk.where(user_id: current_user.id).page(params[:id]).per(5).order("created_at DESC")
		#アソシエーションの実装
		@walks = user.walks.page(params[:id]).per(5).order("created_at DESC")
	end
end
