class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @comments =Comment.all
  end
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to(messages_path, :notice => 'Comentario salvo')
    else
      format.html { render :action => "new" }
    end
  end
  
end
