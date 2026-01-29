class AddGenderToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :Gender, :string
  end

  def down
    remove_column :users, :Gender, :string
  end
end
