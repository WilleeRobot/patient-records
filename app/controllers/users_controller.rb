class UsersController < ApplicationController
    get '/signup' do
        erb :"users/new.html"
    end

    post '/users' do
        @user = User.new
        @user.username = params[:username]
        @user.password = params[:password]

        if @user.valid?
            @user.save
            login(params[:username], params[:password])
            redirect '/patients'
        else
            erb :"users/new.html"
        end
    end

end