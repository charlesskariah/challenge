class QuestionArrayToTask < ActiveRecord::Migration
  def change
  	add_column :tasks, :question_array, :text, array:true, default: []
  end
end
