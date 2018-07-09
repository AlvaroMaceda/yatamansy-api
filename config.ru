require 'sinatra/base'
require_relative './yatamansy'
require_relative './yatamansy_public'

# run Yatamansy

run Rack::URLMap.new(
  {
    '/public' => YatamansyPublic,
    '/' => Yatamansy
  })