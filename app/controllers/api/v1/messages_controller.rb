class Api::V1::MessagesController < ApplicationController
  before_action :get_messages, only: [ :index ]

  def index
    if @channel
      messages = @channel.messages.order('created_at ASC')
      render json: messages
    end
  end

  def create
    message = @channel.messages.build(content: params[:content])
    message.user = current_user
    message.save
    render json: message
  end

  private

  def get_messages
    @channel = Channel.find_by(name: params[:channel_id])
  end
end
