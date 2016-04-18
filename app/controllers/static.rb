get '/' do #whenever someone lands on your first page
  erb :"static/index", locals: {result: "none" } #i.e. displays the index page inside the static folder
end

post '/urls' do
	long_url = params[:long_url]
	@link = Url.create(long_url: long_url)
	# my_url = Url.new(long_url: long_url)	#assigning a new instance
	# @short_url = my_url.shorten						#use the shorten method (ie .shorten) assign the shortened url to a variable
	# my_url.save														#save it
	erb :"static/index"
end

get '/:short_url' do
	erb :"static/result"										#sends you to static/result.erb
	u = Url.find_by short_url: params[:short_url]
	link = u.long_url 									
	redirect link
end



##PING'S NOTES
#from site url to CONTROLLER
# e.g. bitly.com/mini

# under controller it will read it as 
	#=> #get '/mini' do 
	#end
#what html page to return to viewer? thats where VIEW comes in

# Views
# mini.html.erb
# whenever someone accesses this page, you want to return the mini.html.erb file to them
	#get '/mini' do 
		#=> #erb 'mini'				erb i.e. embedded ruby
	#end 