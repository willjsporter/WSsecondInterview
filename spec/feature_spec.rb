# require_relative "../app"

describe 'EarthApp' do

  include Rack::Test::Methods

  def app
    EarthApp
  end

  context "There is a basic start page" do
    it 'returns basic text from an html page' do
      get '/'
      expect(last_response.status).to eq 200
    end

    it 'the page has some specific text' do
      get '/'
      expect(last_response.body).to eq "Hello from planet Earth!"
    end
  end

end
