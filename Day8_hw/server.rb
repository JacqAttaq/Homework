
require 'sinatra'
require 'faker'


get '/'  do
	erb :JackieTime, layout: :bones
end

get '/MealPlan' do
	erb :MealPlan, layout: :bones
end

get ':/Chillin' do
	erb :Chillin, layout: :bones
end

get '/Rollin' do
	erb :Rollin, layout: :bones
end

get '/SocialButterfly' do
	erb :SocialButterfly, layout: :bones
end