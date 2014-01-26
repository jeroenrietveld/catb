class LessonPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token  

  def lessons
  	chapter = params[:chapter]

  	unless chapter
  		chapter = 1
  	end

  	@chapter = Chapter.find(chapter)
  	@chapters = Chapter.all
  end

  def questions
    @questions = Question.all

    if params[:commit]
      @questions.each do |q|
        answer = Answer.find(params[q.id.to_s.to_sym])
        if q.answer == answer.id
          q.correct = "true";
        else
          q.correct = "false";
        end
      end
    end
  end

  def discussion
    @comment = Comment.new
  end
end
