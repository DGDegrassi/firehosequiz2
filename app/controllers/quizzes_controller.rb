class QuizzesController < ApplicationController

  def index
    @quiz = Quiz.new
    @quizdisplay = Quiz.all
  end

  def create
    @quizdisplay = Quiz.create
    redirect_to root_path(quiz_params)
  end

  private
  def quiz_params
    params.require(:quiz).permit(:type)
  end
end
