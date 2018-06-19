class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
    end
      redirect_to task_path(@comment.task_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :task_id, :user_id)
  end


end
