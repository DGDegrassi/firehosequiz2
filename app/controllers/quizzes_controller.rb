class QuizzesController < ApplicationController

  def index
    @quiz = Quiz.new
    @quizdisplay = Quiz.all
  end

  def new

  end

  def create
    @quiz = Quiz.create(quiz_params)
    redirect_to root_path
  end



  private

  def quiz_params
    params.require(:quiz).permit(:name)
  end
end
