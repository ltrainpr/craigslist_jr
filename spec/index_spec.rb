require_relative '/Users/lionelramos/Documents/activerecord_jr/app/controllers/index.rb'
require 'rack/test'
set :environment, :test

describe "Index Page" do
	include Rack::Test::Methods
	it "should load the home page" do
		get '/' 
		last_response.status.should == 200
	end
	# it "should have posts" do 
	# end	
end

describe "description" do
	include Rack::Test::Methods
	it "should load the post page" do
		get '/posts/:id'
	end
end

