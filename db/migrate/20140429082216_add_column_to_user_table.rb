class AddColumnToUserTable < ActiveRecord::Migration
  def change

  	add_column :users, :is_admin, :boolean, :default => false

  	add_column :users, :user_type, :integer


  end
end
