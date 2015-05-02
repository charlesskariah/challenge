class UserAnswersController < ApplicationController

	def new
		
	end

	def create
		question_hash = {}
		task_id = params[:user_answer][:task_id].to_i
		UserTask.where("task_id IN (?) AND user_id IN (?)", task_id, current_user.id).first.update_columns(end_time: Time.now)
		question_ids = Task.find(task_id).question_array.map(&:to_i)
		question_ids.each do |question_id|
      if params["#{question_id}"].present?
      	question_hash[question_id] = params["#{question_id}"].to_i
      	UserAnswer.create(task_id: task_id, user_id: current_user.id, question_id: question_id, answer_option_id: params["#{question_id}"].to_i)
      end
		end
		calculate_score(question_hash,question_ids,task_id)
		check_for_winner(task_id)
		flash[:notice] = "You Have Successfully completed the Challenge."
	end
	
	def calculate_score(question_hash,question_ids,task_id)
		score = 0
		question_ids.each do |question_id|
			if question_hash[question_id].present?
				correct_option_id = Question.find(question_id).answer_option_id
				user_option = question_hash[question_id]
				if correct_option_id == user_option
					score = score + 10
				end
			end
		end
		UserTask.where("task_id IN (?) AND user_id IN (?)", task_id, current_user.id).first.update_columns(points: score)
		if current_user.total_points.present?
			new_total = current_user.total_points + score
		else
			new_total = score
		end
		current_user.update_columns(total_points: new_total)
	end

	def check_for_winner(task_id)
		user_data = UserTask.where(task_id: task_id)
		if user_data.first.points.present? && user_data.last.points.present?
			if user_data.first.points > user_data.last.points
				Task.find(task_id).update_columns(winner: user_data.first.user_id, status: "completed")
	    elsif user_data.first.points < user_data.last.points
				Task.find(task_id).update_columns(winner: user_data.last.user_id, status: "completed")				
	    else
	    	Task.find(task_id).update_columns(winner: user_data.first.user_id, status: "completed")
      end
      redirect_to challenge_completed_challenges_path
    end					    	
	end

end