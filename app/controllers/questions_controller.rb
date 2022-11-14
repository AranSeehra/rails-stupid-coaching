class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    case @question
    when 'what time is it?'
      @answer = Time.now
    when /[^.!?]+\?/
      @answer = 'Silly question, get dressed and go to work!'
    when 'hello'
      @answer = 'Hello there!'
    when 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
