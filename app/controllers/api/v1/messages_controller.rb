class Api::V1::MessagesController < ApplicationController
  before_action :get_messages, only: [ :index ]

  def index
    messages = @channel.messages
    render json: messages
  end

  def create
  end

  private

  def get_messages
    @channel = Channel.find_by(name: params[:channel_id])
  end
end
