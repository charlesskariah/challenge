class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
    	t.references :question, index: true
    	t.string :option_name

      t.timestamps null: false
    end
  end
end
