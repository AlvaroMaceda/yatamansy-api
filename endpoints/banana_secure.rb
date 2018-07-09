require 'jsend'

module Endpoints
  class Banana
    def self.define_banana(api)
      api.get '/banana' do
        JSend.success(banana: 'gross michel').to_json
        # [ 401, JSend.fail(message: 'Unauthorized').to_json]
      end
    end
  end
end