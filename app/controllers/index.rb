require 'sinatra'

def app
	Sinatra::Application
end
get '/' do
  @posts = Post.order("created_at DESC")
  @title = "Welcome to Active Record Jr. by Lionel"
  erb :index
end

get '/post/:id' do
	@post = Post.find(params[:id])
	@title = @post.title
	erb :"posts/view"
end

post '/post/new' do
	@title = params[:title]

end
