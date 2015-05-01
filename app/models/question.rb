class Question < ActiveRecord::Base
	has_many :options

	def self.allocate_questions
		 Question.order("RANDOM()").limit(10).map{|x| x.id}
	end
end
