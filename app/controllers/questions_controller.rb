class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if (params[:question])
      if params[:question] == "I am going to work"
        @coachresponse = "Great!"
      elsif params[:question].include? "?"
        @coachresponse = 'Silly question, get dressed and go to work!'
      else
        @coachresponse = "I don't care, get dressed and go to work!"
      end
    end
  end
end
