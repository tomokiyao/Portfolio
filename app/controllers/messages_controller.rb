class MessagesController < ApplicationController

	def create
	room = Room.find(params[:room_id])
	message = current_user.messages.build(user_id: current_user.id, room_id: params[:room_id], content: params[:content])
	message.room_id = room.id
	message.save
	room.update(read_at: message.created_at)
	num = room.id.to_s
	session[:room][num] = message.created_at
	render partial: 'message', locals: {room: room}
	end
end
