require_relative "user_controller.rb"

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, 'app/views'
  set :method_override, true



  get '/' do 
    client = Yelp::Fusion.client
    resp = client.search('San Fransisco')
    erb :index 
    # binding.pry
  end 


end
