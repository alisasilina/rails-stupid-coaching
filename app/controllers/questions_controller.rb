class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = params[:answer]
    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
