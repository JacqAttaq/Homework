require 'sinatra'

require 'mysql'
require 'dm-myql-adapter'
require 'data_mapper'

get '/'  do
	erb :SunshineRainbowsandUnicorns, layout: :bones
end