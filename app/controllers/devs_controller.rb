class DevsController < ApplicationController
  before_action :authorize, except: [:new, :create]
  # before_action :check_current_dev [:edit, :update]

  def index
    @devs = Dev.all
  end

  def matches
    @devs = Dev.all
  end

  def show
    @dev = Dev.find(params[:id])
    @comments = @dev.comments
    @comment = Comment.new
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
      session[:dev_id] = @dev.id
      flash[:notice] = "You've successfully signed in!"
      redirect_to devs_path
    else
      render :new
    end
  end

def edit
  @dev = Dev.find(params[:id])
end

def update
  @dev = Dev.find(params[:id])
  if @dev.update_attributes(dev_params)
    redirect_to current_dev
  else
    render :edit
  end





end

def destroy
  @dev = Dev.find(params[:id])
  @dev.destroy
  redirect_to devs_path
end
private
  def dev_params
    params.require(:dev).permit(:dev, :email, :password, :description,
                                :password_confirmation, :first_name,
                                :last_name, :interested_in, :gender,
                                :location, :born_on, :github_username,
                                :dev_lang_pref, :dev_level,
                                :picture_url)
  end

# def check_current_dev
#   unless current_dev
# end




end
