require 'sinatra'
require 'data_mapper'
require 'dm-mysql-adapter'
require 'mysql'



DataMapper.setup(
	:default,
	'mysql://root@localhost/happy'
)

class Sunshine
	include DataMapper::Resource

	property :id, Serial
	property :date, String
	property :fruit, String
	property :vegetables, String
	property :exercise, String
	property :fresh_air, String
	property :people_slapped, String
	property :deep_thought, String
end


DataMapper.finalize.auto_upgrade!

get '/'  do
	erb :SuperHappyFunTime, layout: :bones
end


get '/CreateNewPost' do
	erb :CreateNewPost, layout: :bones
end

post '/CreateNewPost' do
	p params
	@ray = Sunshine.new 	
	@ray.date = params[:date]
	@ray.fruit = params[:fruit]
	@ray.vegetables = params[:vegetables]
	@ray.exercise = params[:exercise]
	@ray.fresh_air = params[:fresh_air]
	@ray.people_slapped = params[:people_slapped]
	@ray.deep_thought = params[:deep_thought]
	@ray.save
	redirect to '/'
end

get '/RecentPosts' do
	erb :RecentPosts, layout: :bones
end

get '/RecentPosts' do
   @rays = Sunshine.get params[:id]
   erb :RecentPosts
end