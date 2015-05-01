class SessionsController < Devise::SessionsController
  def create
  	super
  	current_user.update_columns(status: true)
  end

  def destroy
  	current_user.update_columns(status: false)
  	super
  end

end