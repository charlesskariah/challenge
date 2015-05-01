class ChallengesController < ApplicationController
  before_action :authenticate_user!

  def index
  	@online_users = User.online_users(current_user)
  end

  def new
  	challenged_user = User.find(params[:challenged].to_i)
    challenge_name = "#{current_user.name} Vs #{challenged_user.name}"
  	Task.create(user_id: current_user.id, challenging_user_id: current_user.id, challenged_user_id: challenged_user.id, status: "requested", challenge_name: challenge_name)
  	flash[:notice] = 'You have Successfully challenged the User'
    redirect_to root_path
  end

  def challenge_requests
    @challenges = Task.where("status IN (?) AND challenged_user_id IN (?)", "requested", current_user.id)
  end

  def challenge_ongoing
    @challenges = Task.where("(challenged_user_id IN (?) OR challenging_user_id IN (?)) AND status IN (?)", current_user.id, current_user.id, "accepted")
  end

  def challenge_completed
    @challenges = Task.where("(challenged_user_id IN (?) OR challenging_user_id IN (?)) AND status IN (?)", current_user.id, current_user.id, "completed")
  end

  def challenge_pending
    @challenges = Task.where("challenging_user_id IN (?) AND status IN (?)", current_user.id, "requested")
  end

  def accept
    task_id = params[:challenge_id].to_i
    question_ids = Question.allocate_questions
    task = Task.find(task_id)
    task.update_columns(status: "accepted", question_array: question_ids)
    task.user_tasks.create(user_id: task.challenged_user_id)
    task.user_tasks.create(user_id: task.challenging_user_id)
    redirect_to challenge_ongoing_challenges_path
  end

  def start
    @task_id = params[:challenge_id].to_i
    user_task = UserTask.where("task_id IN (?) AND user_id IN (?)", @task_id, current_user.id)
    if user_task.first.start_time.nil?    
      user_task.first.update_columns(start_time: Time.now)
    end
    question_ids = Task.find(@task_id).question_array.map(&:to_i)
    @questions = Question.find(question_ids)
    @user_answer = UserAnswer.new
  end


 
end
