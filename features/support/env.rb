# require 'cucumber/api_steps'
# require 'rspec'
require 'rack'
require 'rack/test'
require 'jsend'

# RSpec matchers
# require 'rspec/expectations'

# Required for RSpec to play nice with Sinatra/Test
# require 'rspec/interop/test'

require_relative '../../yatamansy'

# require_relative '../../spec/spec_helper'

# Yatamansy::App.set :environment, :development
# Sinatra::Application.set :environment, :test

class MyWorld
  # include Rack::Test::Methods
  # include Webrat::Methods
  # include Webrat::Matchers

  # Webrat::Methods.delegate_to_session :response_code, :response_body

  def app
    # Sinatra::Application
    Yatamansy
  end
end

World{MyWorld.new}
