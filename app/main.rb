require 'rubygems'
require 'sinatra'
require 'shotgun'
require 'haml'
require './model'

not_found do
     status 404
     "Something wrong! Try to type URL correctly or call to UFO."
end

get '/' do
  @item = Item.create(:title      => "First Item",
                      :body       => "Item body",
                      :created_at => Time.now
                      )
  haml :home
end
