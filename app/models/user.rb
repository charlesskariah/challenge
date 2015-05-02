class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true

  has_many :tasks
  has_many :messages

  def self.online_users(current_user)
  	user_ids = User.all.where(status:true).map{|x| x.id}
  	except_current_user = user_ids - [current_user.id]
  	User.find(except_current_user)
  end

  def self.leaderboard
    User.all.order('total_points DESC')
  end


end
