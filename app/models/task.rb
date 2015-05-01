class Task < ActiveRecord::Base
	belongs_to :user
	has_many :user_tasks
	has_many :user_answers


	def winner_name
		User.find(self.winner).name
	end

	def current_user_points(current_user_id)
		self.user_tasks.where(user_id: current_user_id ).first.points
    
	end

	def opponent_user_points(current_user_id)
		user_ids = self.user_tasks.map{|x| x.user_id}
		current_user_id = [current_user_id]
		opponent_id = user_ids - current_user_id
	  self.user_tasks.where(user_id: opponent_id).first.points
	end
		

end
