class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @userquestion = params[:userquestion]
    @answer = coachanswer(@userquestion)
  end

  def coachanswer(userquestion)
    if userquestion == "I am going to work"
      "Great!"
    elsif userquestion.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
