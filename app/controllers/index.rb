get '/' do
  @title = "Welcome to Active Record Jr. by Lionel"
  @categories = Category.order("created_at DESC")
  redirect "/new" if @categories.empty?
  erb :index
end

get '/new' do
	erb :new
end

post '/new' do 
	@category = Category.new(name: params[:title], description: params[:description])
	if @category.save
		redirect "category/#{@category.id}"
	else
		erb :new
	end
end

get '/category/:id' do
	@category = Category.find_by_id(params[:id])
	erb :category
end

get '/post/new' do
	@title = "Create post"
	erb :new_post
end


get '/post/:id' do
	@post = Post.find_by_id(params[:id])
	erb :post
end


post '/post/new' do
	@title = params[:title]
	@post = Post.new(title: params[:title], description: params[:description], price: params[:price], email: params[:email])
	if @post.save
		redirect "post/#{@post.id}"
	else
		erb :post
	end
end









