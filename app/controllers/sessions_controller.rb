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
    redirect_to root_path, notice: "Logged out!"
  end

end
