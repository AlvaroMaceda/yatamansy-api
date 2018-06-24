ENV['RACK_ENV'] = 'test'

require 'net/http'
require 'rspec'
require 'json'
require 'rack/test'

require_relative '../yatamansy'

describe 'Banana Api' do

  include Rack::Test::Methods

  def app
    Yatamansy
  end

  context 'retieves the information about the banana' do
    it 'returns the info' do
      get '/banana'
      retrieved_information = JSON.parse(last_response.body)
      expect(retrieved_information['banana']).to eq('gross michel')
    end
  end
end