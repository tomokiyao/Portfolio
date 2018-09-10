class MessagesController < ApplicationController

def create
  room = Room.find(params[:room_id])
  message = current_user.messages.build(user_id: current_user.id, room_id: params[:room_id], content: params[:content])
  message.room_id = room.id
  message.save
  if current_user.id == room.user_id
    read = Unread.find_by(room_id: room.id, user_id: room.made_id)
  else
    read = Unread.find_by(room_id: room.id, user_id:room.user_id)
  end
  read.count += 1
  read.save
  render partial: 'message', locals: {room: room}
  end
end
