class SessionsController < Devise::SessionsController

  def create
  	super
  	if current_user.total_points.nil?
  		current_user.update_columns(total_points: 0)
  	end
  	current_user.update_columns(status: true)
  end

  def destroy
  	current_user.update_columns(status: false)
  	super
  end

end