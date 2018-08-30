class RoomsController < ApplicationController
  def index
  	@user = current_user.id
  	@rooms = Room.where("user_id = ? OR made_id = ?",@user, @user)
  end

  def show
  	@user = current_user.id
  	@rooms = Room.where("user_id = ? OR made_id = ?",@user, @user)
  	@room = Room.find(params[:id])
    @messages = @room.messages
    @room.read_at = DateTime.now
    @room.save
    @message = Message.new
    num = @room.id.to_s
    session[:room][num] = DateTime.now
    # if @room.read_at < session[:room][num]
    #   puts "aaa"
    # end
  end

  def create
    @user = params[:id].to_i
    if Room.find_by(user_id: current_user.id, made_id: @user) || Room.find_by(user_id:@user, made_id: current_user.id)
      redirect_to rooms_path
    else
      @room = Room.new(user_id: current_user.id.to_i, made_id: @user)
      @room.save
      redirect_to room_path(@room)
    end
  end

end

