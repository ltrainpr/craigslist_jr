require 'sinatra'

def app
	Sinatra::Application
end
get '/' do
  # Look in app/views/index.erb
  erb :index
end
