require 'sinatra/base'
require 'sinatra/cross_origin'
require 'json'

require_relative 'endpoints/banana'

class Yatamansy < Sinatra::Base

  API_HOST=ENV['API_HOST']
  API_PORT=ENV['API_PORT']

  configure do
    enable :cross_origin if API_HOST == 'localhost'
    set :bind, API_HOST
    # set :port, API_PORT
    set :raise_errors, true
    set :show_exceptions, false
  end

  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
    content_type 'application/json'
  end


  get '/' do
    'patata'
  end

  Endpoints::Banana.define_banana(self)



end