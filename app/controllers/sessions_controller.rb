class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/home'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end