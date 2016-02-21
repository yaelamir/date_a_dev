class SessionsController < ApplicationController

  def new
  end

  def create
    dev = Dev.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      sessions[:dev_id] = dev.id
      redirect_to devs_path, notice: 'Logged in!'
    else
      flash.now.alert = 'Invalid login credentials'
      render :new
    end
  end

  def destroy
    sessions[:dev_id] = nil
    redirect_to devs_path, notice: "Logged out!"
  end

end
