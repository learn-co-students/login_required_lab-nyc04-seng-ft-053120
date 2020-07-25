class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to action: 'new'
    else 
      session[:name] = params[:name]
      render :welcome
    end 
  end

  def destroy
    session[:name] = nil
    redirect_to action: 'new'    
  end

  

end