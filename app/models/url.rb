class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
before_create :shorten
	
	def shorten
		self.short_url = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
	end
end
