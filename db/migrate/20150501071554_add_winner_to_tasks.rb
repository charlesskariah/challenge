class AddWinnerToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :winner, :integer
  end
end
