class Api::V1::RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    render json: @room
  end

  def index
    @rooms = Room.all
    render json: @rooms
  end
end