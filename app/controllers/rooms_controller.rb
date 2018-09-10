class RoomsController < ApplicationController
  def index
  	@user = current_user.id
  	@rooms = Room.where("user_id = ? OR made_id = ?",@user, @user)
    @read = Unread.where("user_id = ? and count > 0", current_user.id)
  end

  def show
  	@user = current_user.id
  	@rooms = Room.where("user_id = ? OR made_id = ?",@user, @user)
  	@room = Room.find(params[:id])
    @messages = @room.messages
    @room.read_at = DateTime.now
    @message = Message.new
    read = Unread.find_by(room_id: @room.id, user_id: current_user.id)
    read.count = 0
    read.save
    @read = Unread.where("user_id = ? and count > 0", current_user.id)
  end

  def create
    @user = params[:id].to_i
    if Room.find_by(user_id: current_user.id, made_id: @user) || Room.find_by(user_id:@user, made_id: current_user.id)
      redirect_to rooms_path
    else
      @room = Room.new(user_id: current_user.id.to_i, made_id: @user)
      @room.save
      myread = Unread.new(room_id: @room.id, user_id:current_user.id, count: 0)
      myread.save
      yourread = Unread.new(room_id: @room.id, user_id: @user, count: 0)
      yourread.save
      redirect_to room_path(@room)
    end
  end

def destroy
  room = Room.find(params[:id])
  room.destroy
  redirect_to rooms_path
end

end

