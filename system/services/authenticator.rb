require 'jsend'

class Authenticator
  def initialize(app)
    @app = app
  end

  def call(env)
    if Rack::Request.new(env).params['my_token'] == 'MY_SECRET_TOKEN'
      @app.call(env)
    else
      Rack::Response.new([JSend.fail(message: 'Unauthorized').to_json], 401, {'content_type' => 'application/json'}).finish
    end
  end
end