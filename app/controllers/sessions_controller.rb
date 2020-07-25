class SessionsController < ApplicationController

    def new
        session[:name] = params[:name]
    end

    def create
        return redirect_to login_path if !params[:name] || params[:name].blank?
        session[:name] = params[:name]
    end

    def destroy
        session[:name] = nil
    end
end
