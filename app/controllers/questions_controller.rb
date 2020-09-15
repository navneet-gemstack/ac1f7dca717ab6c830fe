class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit]

  def index
    @questions = Question.all
  end


  def show
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      redirect_to questions_path, notice: 'Question successfully created.' 
    else
      render :new 
    end
  end

  private

  def question_params
    params.require(:question).permit(:body,:topic_id)
  end

  def set_question
    @question = Question.find(params[:id])
  end

end
