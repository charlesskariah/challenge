class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.references :task
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_option_id
      t.timestamps null: false
    end
  end
end
