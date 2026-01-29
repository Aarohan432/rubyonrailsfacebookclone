class AddDateofbirthToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :D_O_B, :string
  end

  def down
    remove_column :users, :D_O_B, :string
  end
end
