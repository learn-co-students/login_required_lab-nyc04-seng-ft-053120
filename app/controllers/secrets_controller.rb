class SecretsController < ApplicationController

    # before_action :require_login

    def show
        if session[:name] == nil
            redirect_to login_path
        end
    end

    def create
        # byebug
        if params[:name] == nil || params[:name] == ''
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
    end

    def destroy
        # byebug
        session.delete(:name)
        redirect_to root_path
    end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
