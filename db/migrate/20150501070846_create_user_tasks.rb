class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
    	t.references :task, index: true
    	t.integer :user_id
    	t.datetime :start_time
    	t.datetime :end_time
    	t.integer :points
    	t.integer :correct_answers

      t.timestamps null: false
    end
  end
end
