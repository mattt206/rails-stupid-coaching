class AnswersController < ApplicationController
  def answer
    # @question = params[:answer]
    @answer = params[:answer]
    @message = check(@answer)
  end

  def check(answer)
    if answer == "go to work"
      message = "good one, go to work and be happy"
    elsif answer == ''
      @answer = '-awkward silence-'
      message = "what? dont you have anything interesting to say?"
    else
      message = 'silly question, go to work'
    end
    return message
  end
end
