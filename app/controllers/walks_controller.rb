class WalksController < ApplicationController
	def index
		@walks = Walk.all
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
