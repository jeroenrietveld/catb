class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.lesson_id = params[:lesson_id]

    if @comment.save
      redirect_to lesson_pages_discussion_path
    else
      redirect_to lesson_pages_discussion_path
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :lesson_id)
    end
end