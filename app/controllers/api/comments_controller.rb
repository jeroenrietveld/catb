class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    
    respond_to do |format|
      format.json { render :json => @comments }
    end
  end

  def byLesson
  	@comments = Comment.where("lesson_id = " + params[:lesson_id])
  	
    respond_to do |format|
      format.json { render :json => @comments }
    end
  end
end