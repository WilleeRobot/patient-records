class HistoriesController < ApplicationController
    get '/patients/:id/histories/new' do
        #check to see if logged in
        if logged_in?
            @user = current_user
            @patient = current_user.patients.find_by(id: params[:id])
            @histories = @patient.histories.all
            @all_patients = Patient.all
            @all_users = User.all

            erb :"/histories/new.html"
        else
            @users = User.all
            @patients = Patient.all
            erb :"/patients/summary.html"
        end
    end

    get '/patients/:id/histories/:history_id/edit' do
        #check to see if user logged in

        if !logged_in?
            redirect "/login"
        else
            #Ensure only logged in user is allowed to edit => USER OBJECT
            @patient = current_user.patients.find_by(id: params[:id].to_i)
            @history = @patient.histories.find_by(id: params[:history_id].to_i)

            if @history   
                @patient = current_user.patients.find_by(id: params[:id].to_i)
                @history = @patient.histories.find_by(id: params[:history_id].to_i)

                erb :"/histories/edit.html"
            else
                @patient = Patient.find_by(id: params[:id].to_i)
                redirect "/patients/#{@patient.id}"
            end
        end
    end    

    get '/patients/:id/histories/:history_id' do
        if logged_in?
            @patient = current_user.patients.find_by(id: params[:id])
            if @patient
                @user = current_user
                @history = @patient.histories.find_by(id: params[:history_id])

                erb :"/histories/show.html"
            else
                redirect "/patients"
            end
        else
            redirect "/patients"
        end

    end
    
    post '/patients/:id/histories' do
        @patient = current_user.patients.find_by(id: params[:id])
        @history = History.new
        @history.date = params[:date]
        @history.notes = params[:notes]
        @history.action = params[:action]
        @history.patient = @patient

        if @history.save
            redirect "/patients/#{@patient.id}/histories/#{@history.id}"
        else
            erb :"histories/new.html"
        end
    end

    patch '/patients/:id/histories/:history_id' do
        @patient = current_user.patients.find_by(id: params[:id])
        @history = @patient.histories.find_by(id: params[:history_id].to_i)

        @history.date = params[:date] if !params[:date].empty?
        @history.notes = params[:notes] if !params[:notes].empty?
        @history.action = params[:action] if !params[:action].empty?
        @history.save

        redirect "/patients/#{@patient.id}/histories/#{@history.id}"
    end

    delete '/patients/:id/histories/:history_id/delete' do
        @patient = current_user.patients.find_by(id: params[:id])
        @history = @patient.histories.find_by(id: params[:history_id])
        @history.delete

        redirect "/patients/#{@patient.id}"
    end
end
