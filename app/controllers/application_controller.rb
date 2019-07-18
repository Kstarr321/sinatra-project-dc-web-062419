class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')



  get '/' do 
    client = Yelp::Fusion.client
    resp = client.search('San Fransisco', {term:food})
    erb :index 
    binding.pry
  end 


end
