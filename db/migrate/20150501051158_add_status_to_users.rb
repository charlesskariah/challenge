class AddStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status, :boolean
    add_column :users, :total_points, :integer
  end
end
