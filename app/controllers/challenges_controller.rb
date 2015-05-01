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

 
end
