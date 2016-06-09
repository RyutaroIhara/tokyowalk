class Review < ActiveRecord::Base
	belongs_to :walk
	belongs_to :user
end
