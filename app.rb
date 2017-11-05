require 'sinatra/base'
require 'json'

ENV['RACK_ENV'] ||= 'development'

class EarthApp < Sinatra::Base

  get '/' do
    "Hello from planet Earth!"
  end

end
