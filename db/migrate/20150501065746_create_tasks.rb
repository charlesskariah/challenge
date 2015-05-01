class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.references :user, index: true
    	t.string :challenge_name
    	t.integer :challenging_user_id
    	t.integer :challenged_user_id
    	t.string :status
    	t.string :question_ids

      t.timestamps null: false
    end
  end
end
