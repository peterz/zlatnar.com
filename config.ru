require 'rubygems'
require 'bundler'
require 'sinatra'

require 'sprockets'
map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/images'
  run sprockets
end

class App < Sinatra::Application
  get '/' do
    erb :index
  end
end

run App