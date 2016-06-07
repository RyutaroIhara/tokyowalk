class WalksController < ApplicationController
	def index
		@walks = Walk.order('created_at DESC').page(params[:page]).per(5)
	end

	def show
	end

	def new
	end

	def create
		Walk.create(walk_params)
		redirect_to actiom: :index
	end

	private
	def walk_params
		params.permit(:title, :name, :image, :text)
	end
end
