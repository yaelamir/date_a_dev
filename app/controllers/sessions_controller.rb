class SessionsController < ApplicationController

  def new
  end

  def create
    dev = Dev.find_by(email: params[:email])
    if dev && dev.authenticate(params[:password])
      session[:dev_id] = dev.id
      redirect_to devs_path, notice: 'Logged in!'
    else
      flash.now.alert = 'Invalid login credentials'
      render 'new'
    end
  end

  def destroy
    session[:dev_id] = nil
    flash[:notice] = "Logged out!"
    redirect_to login_path
  end

end
