require '/Users/lionelramos/Documents/activerecord_jr/app/controllers/index.rb'
require 'rack/test'
set :environment, :test

describe "Index Page" do
	it "should load the home page" do
		get '/' 
		last_response.status.should == 200
	end
end

