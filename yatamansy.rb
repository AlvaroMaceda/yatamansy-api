require 'sinatra/base'
require 'sinatra/cross_origin'
# require 'sinatra/json'
require 'json'

require_relative 'endpoints/banana_secure'
require_relative 'system/services/authenticator'

class Yatamansy < Sinatra::Base

  use Authenticator

  API_HOST=ENV['API_HOST']
  API_PORT=ENV['API_PORT']

  configure do
    enable :cross_origin if API_HOST == 'localhost'
    set :bind, API_HOST
    set :port, API_PORT
    set :raise_errors, true
    set :show_exceptions, false
  end

  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
    # content_type 'application/json'
  end


  get '/' do
    'patata'
  end

  Endpoints::Banana.define_banana(self)



end