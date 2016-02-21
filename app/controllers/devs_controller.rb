class DevsController < ApplicationController

  def index
    @devs = Dev.all
  end

  def show
    @dev = Dev.find(params[:id])
  end

  def edit
    @dev = Dev.find(params[:id])
  end

  def new
    @dev = Dev.new
  end

  def create
    @dev = Dev.new(dev_params)

    if @dev.save
      flash[:notice] = "You've successfully signed in!"
      redirect_to devs_path
    else
      render :new
    end
  end

private
  def dev_params
    params.require(:dev).permit(:dev, :email, :password, :password_confirm, :first_name, :last_name, :interested_in, :gender, :location, :born_on, :github_username, :dev_lang_pref, :dev_level, :picture_url)
  end
end
