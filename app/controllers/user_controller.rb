class UserController < Sinatra::Base
    set(:views, 'app/views/user')

    get "/users" do 
        @users = User.all
        erb :index
    end 

    get "/users/new" do 
        erb :new
    end 

    post "/users" do 
        name = params[:name]

    end 





end 