class LessonPagesController < ApplicationController
  def lessons
  	chapter = params[:chapter]

  	unless chapter
  		chapter = 1
  	end

  	@chapter = Chapter.find(chapter)
  	@chapters = Chapter.all
  end

  def questions
  end

  def discussion
    @comment = Comment.new
  end
end
