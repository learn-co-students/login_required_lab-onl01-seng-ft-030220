class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/login"
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name].present?
      session.delete :name
    end
  end

end
