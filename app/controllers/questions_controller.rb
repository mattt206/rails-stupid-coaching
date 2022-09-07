class QuestionsController < ApplicationController
  def ask
    @question = params[:answer]
  end
end
