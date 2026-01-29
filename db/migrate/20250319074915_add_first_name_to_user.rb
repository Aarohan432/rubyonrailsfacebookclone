class AddFirstNameToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :first_name, :string
  end
  def down
    remove_column :users, :first_name, :string
  end
end
