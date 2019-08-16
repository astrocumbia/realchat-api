class Api::V1::MessagesController < ApplicationController
  def index
    @messages = room.messages.all
    render json: @messages
  end

  private

  def room
    Room.find(params[:room_id])
  end
end