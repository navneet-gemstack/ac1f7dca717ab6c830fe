class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question_id), notice: 'Answer successfully created.' 
    else
      render :new 
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :user_id, :question_id)
  end
end
