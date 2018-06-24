module Endpoints
  class Banana
    def self.define_banana(api)
      api.get '/banana' do
        {banana: 'cavendish'}.to_json
      end
    end
  end
end