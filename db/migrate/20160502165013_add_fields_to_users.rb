class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_names, :string
     add_column :users, :middle_names, :string
    add_column :users, :last_names, :string
     
  end
end
