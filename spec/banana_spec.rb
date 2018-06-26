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
      puts last_response.body
      # retrieved_information = JSON.parse(last_response.body)
      response = JSend::parse(last_response.body)
      expect(response.sucess?).to eq(true)
      expect(response['data']['banana']).to eq('gross michel')
    end
  end
end