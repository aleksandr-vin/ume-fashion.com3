require 'rubygems'
require 'bundler'

Bundler.require

configure :development do
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db/dev.sqlite3")
end

require './main'

configure do
  set :bind, '0.0.0.0'
  set :logging, true
end


run Sinatra::Application
