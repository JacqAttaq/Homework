require 'sinatra'
require 'data_mapper'
require 'dm-mysql-adapter'
# require 'mysql'



DataMapper.setup (
	:default,
	'mysql://root@localhost/damn_kids'
)


class Blog
	include DataMapper::Resourse
	property :id, Serial
	property :title, String
	property :rant, String
end 

DataMapper.finalize.auto_uprade!


get '/' do
	erb :snafu, layout: :bones
end

get '/now' do
	erb :now, layout: :bones
end

post '/now' do
	p params
	@blog = Blog.new
	@blog.id = params[:id]
	@blog.title = params[:title]
	@blog.rant = params[:rant]
	@blog.save
	redirect to '/'
end


