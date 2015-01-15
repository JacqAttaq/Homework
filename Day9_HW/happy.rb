require 'sinatra'
require 'data_mapper'




DataMapper.setup(
	:default,
	'mysql://root@localhost/happy'
)

class Sunshine
	include DataMapper::Resource
	property :id, Serial
	property :fruit, String
	property :vegetables, String
	property :exersice, String
	property :fresh_air, String
	property :people_slapped, String
	property :deep_thought, String
end
DataMapper.finalize.auto_upgrade!

get '/'  do
	erb :SuperHappyFunTime, layout: :bones
end

get '/RecentPosts' do
	@sunshines = Sunshine.all 
	erb :RecentPosts, layout: :bones
end

get '/CreateNewPost' do
	erb :CreateNewPost, layout: :bones
end