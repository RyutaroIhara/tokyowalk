class WalksController < ApplicationController
	def index
	end

	def show
	end

	def new
	end

	def create
		walk.create(walk_params)
	end

	private
	def walk_params
		params.permit(:title, :name, :image, :text)
	end
end
