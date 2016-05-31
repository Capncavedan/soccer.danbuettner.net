ENV['RACK_ENV']='test'

require 'haml'
require 'rack/test'

include Rack::Test::Methods

require_relative '../app'

Dir[File.dirname(__FILE__)+"/../lib/*.rb"].each {|file| require file }
Dir[File.dirname(__FILE__)+"/factories/*.rb"].each {|file| require file }

RSpec.configure do |config|
  config.order = :random
end

def app
  SoccerApp
end

# Renders the supplied template with Haml::Engine and assigns the
# @response instance variable
def render(template)
  template = File.read(".#{template}")
  engine = Haml::Engine.new(template)
  @response = engine.render(Object.new, assigns_for_template)
end

# Convenience method to access the @response instance variable set in
# the render call
def response
  @response
end

# Sets the local variables that will be accessible in the HAML
# template
def assigns
  @assigns ||= { }
end

# Prepends the assigns keywords with an "@" so that they will be
# instance variables when the template is rendered.
def assigns_for_template
  assigns.inject({}) do |memo, kv|
    memo["@#{kv[0].to_s}".to_sym] = kv[1]
    memo
  end
end