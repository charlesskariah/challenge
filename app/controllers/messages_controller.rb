class MessagesController < ApplicationController

	def index
		@online_users = User.online_users(current_user)
		@message = Message.new
	end

	def create
		@receiver_id = params[:recepient_id].to_i
		message1 = Message.where("sender_id IN (?) AND receiver_id IN (?)", current_user.id ,@receiver_id)
		message2 = Message.where("sender_id IN (?) AND receiver_id IN (?)", @receiver_id, current_user.id)
		messages = message1 + message2
		if messages.present?
			@messages = messages.sort_by{|e| e[:id]}
		end
	  if params[:message].present?
	  	if params[:message]["content"].present?
	  	  Message.create(user_id: current_user.id, sender_id: current_user.id, receiver_id: @receiver_id, content: params[:message]["content"] )
	    end
    end
	  @message = Message.new 
	end
		

end
