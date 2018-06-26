# require 'net/http'
# require 'rspec'
# require 'json'
# require 'rack/test'

describe 'List Api' do

  include Rack::Test::Methods

  def app
    Yatamansy
  end

  # context 'My context' do

  xit 'should add a list' do

    solicitude = {
      "name": 'Banana',
    }.to_json

    post '/list', solicitude

    puts last_response.inspect
    expect(last_response.status).to eq(200)
  end

  xit 'should retrieve lists' do
  end

  # end

end
