class Task < ActiveRecord::Base
	belongs_to :user
	has_many :user_tasks

end
