class PatientsController < ApplicationController
    get '/patients' do
        #check to see if logged in
        if logged_in?
            @user = current_user
            @patients = @user.patients.all

            erb :"/patients/show.html"
        else
            @users = User.all
            @patients = Patient.all
            erb :"/patients/summary.html"
        end
    end

    get '/patients/new' do
        #check to see if user is logged in
        if !logged_in?
            redirect "/login"
        else
            erb :"/patients/new.html"
        end
    end

    get '/patients/:id' do
        if logged_in?
            @patient = current_user.patients.find_by(id: params[:id])
            if @patient
                @user = current_user
                erb :"/patients/unique_show.html"
            else
                redirect "/patients"
            end
        else
            redirect "/patients"
        end

    end
    
    post '/patients' do

        @patient = Patient.new
        @patient.name = params[:name]
        @patient.birth_year = params[:birth_year].to_i
        @patient.history = params[:history]
        @patient.user = User.find_by(id: current_user.id)

        if @patient.save
            redirect "/patients/#{@patient.id}"
        else
            erb :"patients/new.html"
        end
    end

    get '/patients/:id/edit' do
        #check to see if user logged in

        if !logged_in?
            redirect "/login"
        else
            #Ensure only logged in user is allowed to edit => USER OBJECT
            @patient = current_user.patients.find_by(id: params[:id].to_i)

            if @patient        
                
                erb :"/patients/edit.html"
            else
                redirect '/patients'
            end
        end
    end

    patch '/patients/:id/edit' do
        @patient = current_user.patients.find_by(id: params[:id])

        @patient.name = params[:name] if !params[:name].empty?
        @patient.birth_year = params[:birth_year].to_i if !params[:birth_year].empty?
        @patient.history = params[:history] if !params[:history].empty?
        @patient.save

        redirect "/patients/#{@patient.id}"
    end
end
