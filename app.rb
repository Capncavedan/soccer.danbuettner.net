require 'sinatra/base'
require 'tilt/haml'

class SoccerApp < Sinatra::Base
  set :show_exceptions, false

  get '/' do
    content_type "text/html"
    haml :index
  end

  get '/h12r' do
    content_type "text/html"
    haml :h12r
  end

  get '/h8j' do
    content_type "text/html"
    haml :h8j
  end

end
