class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question[-1] == "?"
      @coaches_answer = 'Silly question, get dressed and go to work!'
    elsif @question.downcase == 'i am going to work'
      @coaches_answer = 'Great!'
    else
      @coaches_answer = "I don't care, get dressed and go to work!"
    end
  end
end
