class SessionsController < ApplicationController

    get '/login' do
        erb :"sessions/login.html"
    end

    post '/sessions' do
        login(params[:username], params[:password])

        if logged_in?
            redirect "/patients"
        else
            @message = "Incorrect username or password."
            erb :"sessions/login.html"
        end
    end

    get '/logout' do
        logout!

        redirect '/patients'
    end    
end
