class UserController < Sinatra::Base
    set :views, 'app/views/user'
    set :method_override, true 

    get "/users" do 
        @users = User.all
        erb :index
    end 

    get '/users/new' do 
        erb :new
    end 



    post "/users" do 
        name = params[:name]
        @user = User.create(name: name)

        redirect "/users"
    end 






end 