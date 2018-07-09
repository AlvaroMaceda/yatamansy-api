ENV['RACK_ENV'] = 'test'

require 'net/http'
require 'rspec'
require 'json'
require 'rack/test'
require 'jsend'

require_relative '../yatamansy'

describe 'Banana Api' do

  include Rack::Test::Methods

  def app
    Yatamansy
  end

  context 'non logged user' do

    it 'returns unauthorized' do
      get '/banana'
      jsend_response = JSend.parse(last_response.body)
      expect(last_response.status).to eq(401)
      expect(jsend_response.fail?).to eq(true)
    end

  end

  context 'logged user' do

    it 'retieves the information about the banana' do
      get '/banana'
      response = JSend.parse(last_response.body)
      expect(response.success?).to eq(true)
      expect(response.data['banana']).to eq('gross michel')
    end

  end
end