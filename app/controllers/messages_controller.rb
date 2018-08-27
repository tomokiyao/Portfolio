class MessagesController < ApplicationController

	def create
	room = Room.find(params[:room_id])
	message = current_user.messages.build(user_id: current_user.id, room_id: params[:room_id], content: params[:content])
	message.room_id = room.id
	message.save
	render partial: 'message', locals: {room: room}
	end
	private
	# def message_params
	#   params.require(:message).permit(:user_id,:room_id,:content)
	# end
end
