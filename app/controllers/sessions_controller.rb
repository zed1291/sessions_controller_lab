class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name] == nil
            redirect_to controller: 'sessions#new'
        else
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
        end
    end
    
    def destroy
        session[:name] = nil
        # session.delete :name
        redirect_to controller: 'application', action: 'hello'
    end
end