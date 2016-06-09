class CreateWalks < ActiveRecord::Migration
	def change
		create_table :walks do |t|
			t.text :title
			t.string :name
			t.text :image
			t.text :text

			t.timestamps
		end
	end
end
