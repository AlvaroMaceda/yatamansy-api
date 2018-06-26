module Endpoints
  class Banana
    def self.define_banana(api)
      api.get '/banana' do
        json(banana: 'gross michel') # .to_json
      end
    end
  end
end