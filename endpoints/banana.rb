require_relative '../lib/jsend'

module Endpoints
  class Banana
    def self.define_banana(api)
      api.get '/banana' do
        JSend.success(banana: 'gross michel').to_json
      end
    end
  end
end