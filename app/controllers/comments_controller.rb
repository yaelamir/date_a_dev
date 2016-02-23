class CommentsController < ApplicationController

  def create
    @dev = Dev.find(params[:dev_id])
    @comment = @dev.comments.new(author_id: current_dev.id,
                                 message: params[:comment][:message])

    if @comment.save
      flash[:notice] = "You've successfully made a comment!"
      redirect_to dev_path(params[:dev_id])
    else
      render root_path
    end

  end

  # def index
  #   @devs
end
