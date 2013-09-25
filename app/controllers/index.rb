get '/' do
  @title = "Welcome to Active Record Jr. by Lionel"
  @categories = Category.all#.order("created_at DESC")
  redirect "/new" if @categories.empty?
  erb :index
end

get '/new' do
	erb :new
end

post '/new' do 
	@category = Category.new(name: params[:title], description: params[:description])
	if @category.save
		redirect "categories/#{@category.id}"
	else
		erb :new
	end
end

get '/categories/:id' do
	@category = Category.find_by_id(params[:id])
	erb :categories
end

post '/post/new' do
	@title = params[:title]
end