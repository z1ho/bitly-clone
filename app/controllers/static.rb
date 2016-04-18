get '/' do #whenever someone lands on your first page
  erb :"static/index", locals: {result: "none" } #i.e. displays the index page inside the static folder
end

post '/urls' do
	long_url = params[:long_url]
	@link = Url.create(long_url: long_url, click_count: 0)
	# my_url = Url.new(long_url: long_url)	#assigning a new instance
	# @short_url = my_url.shorten						#use the shorten method (ie .shorten) assign the shortened url to a variable
	# my_url.save														#save it
	erb :"static/index"
end

get '/count' do
	@url = Url.all
	erb :"static/counts"
end

get '/:short_url' do
	erb :"static/result"										#sends you to static/result.erb
	u = Url.find_by short_url: params[:short_url]
	link = u.long_url 									
	u.click_count = u.click_count + 1
	u.save
	redirect link
end



