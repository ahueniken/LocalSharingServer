class AddFieldsToActions < ActiveRecord::Migration
  def change
  	add_column :actions, :title, :string
  	add_column :actions, :description, :string
  	add_column :actions, :customer_id, :integer
  end
end
