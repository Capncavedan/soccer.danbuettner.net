require 'sinatra/base'
require 'tilt/haml'

class SoccerApp < Sinatra::Base
  set :show_exceptions, false

  get '/' do
    content_type "text/html"
    haml :index
  end

end
