class QuestionsController < ApplicationController

  def ask
    @ask
  end

  def answer
    @toto = params[:question]
    @answer = coach_answer(@toto)
  end

  def coach_answer(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.include? '?'
      'Silly question, get dressed and go to work!'
    else "I don't care, get dressed and go to work!"
    end
  end
end
