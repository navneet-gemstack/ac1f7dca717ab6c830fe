class TopicsController < ApplicationController
  before_action :set_topic, only: [:show]

  def show
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to questions_path, notice: 'Topic successfully created.' 
    else
      render :new 
    end
  end

  def follow_topic
    user_topic = current_user.user_topics.new(topic_id:params[:id])
    if user_topic.save
      redirect_to questions_path, notice: 'Topic Followed successfully.' 
    else
      redirect_to questions_path, notice: user_topic.errors.messages[:topic].to_sentence      
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:body)
  end
  
end
