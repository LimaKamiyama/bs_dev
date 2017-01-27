class CommentsController < ApplicationController
  def create
    thought = Thought.includes(:user).find(params[:id])
    @comment = Comment.includes(:user).includes(:thought).create(text: comment_params[:text], thought_id: thought.id, user_id: current_user.id)
    redirect_to "/thoughts/#{thought.id}"
  end

  private
  def comment_params
    params.permit(:text, :thought_id)
  end
end
