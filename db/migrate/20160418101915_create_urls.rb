class CreateUrls < ActiveRecord::Migration
	def change
	#Write a code that will create a URLs table and its needed fields.
	#Think of your database like a giant Excel spreadsheet
		create_table :urls do |x|
			x.string :long_url
			x.string :short_url
			x.integer :click_count
		end	
	end
end
