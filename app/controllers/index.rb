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


get '/category/:category_id/post/new' do
	@category = Category.find(params[:category_id])
	erb :new_post
end


post '/category/:category_id/post/new' do
	@post = Post.new(category_id: params[:category_id], title: params[:title], description: params[:description], price: params[:price], email: params[:email])
	p '/'*200
	p params

	if @post.save
		redirect "/post/#{@post.id}"
	else
		erb :new_post
	end
end

get '/category/:id' do
	@category = Category.find_by_id(params[:id])
	@post = @category.posts
	erb :category
end

get '/post/:id' do
	@post = Post.find_by_id(params[:id])
	erb :post
end










