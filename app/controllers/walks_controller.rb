class WalksController < ApplicationController

	before_action :move_to_index, except: [:index, :show]	#index以外にもログインしていない状態でshowアクションに飛べるようにする

	def index
		@walks = Walk.includes(:user).order('created_at DESC').page(params[:page]).per(5)
	end

	def show
		@walk = Walk.find(params[:id])
		@reviews = @walk.reviews.includes(:user)
	end

	def new
	end

	def create
		# Walk.create(title: walk_params[:title], name: walk_params[:name], image: walk_params[:image], text: walk_params[:text], user_id: current_user.id)
		Walk.create(title: walk_params[:title], image: walk_params[:image], text: walk_params[:text], user_id: current_user.id)
		redirect_to action: :index
	end

	def destroy
		walk = Walk.find(params[:id])
		if walk.user_id == current_user.id
			walk.destroy
		end
		redirect_to action: :index
	end

	def edit
		@walk = Walk.find(params[:id])
	end

	def update
		walk = Walk.find(params[:id])
		if walk.user_id == current_user.id
			walk.update(walk_params)
		end
		redirect_to action: :index
	end

	private
	def walk_params
		# params.permit(:title, :name, :image, :text)
		params.permit(:title, :image, :text)
	end

	def move_to_index
		redirect_to action: :index unless user_signed_in?
	end
end
