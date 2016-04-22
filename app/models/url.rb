class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	validates :long_url, :format => URI::regexp(%w(http))
	before_create :shorten
#what this does, if @url.save will prompt to this model. before you do the .save, the computer will shorten
#before its saved (eg @url.save, then its gonna run this method shorten, and assign short_url to blahblah)

#validates :long_url, :short_url
	
	def shorten
		self.short_url = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
	end

end


#AR is a class/modules that has methods that allows your Ruby/model to communicate with your database
# e.g .all / .find_by / .where / .update / .save / .create