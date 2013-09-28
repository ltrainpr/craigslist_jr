get '/' do
  if @title
      "#{@title}"
    else
    	@title = "Welcome to Active Record Jr. by Lionel"
    end
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

post '/post/new' do
	@title = params[:title]
end