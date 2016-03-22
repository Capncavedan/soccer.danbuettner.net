require 'sinatra/base'
require 'tilt/haml'

class SoccerApp < Sinatra::Base
  set :show_exceptions, false

  get '/' do
    content_type "text/html"
    haml :index
  end

  get '/girls' do
    content_type "text/html"
    haml :girls
  end

  get '/boys' do
    content_type "text/html"
    haml :boys
  end

end
