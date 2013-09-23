require_relative '/Users/lionelramos/Documents/activerecord_jr/config/environment.rb'

get '/' do
  # Look in app/views/index.erb
  erb :index
end
