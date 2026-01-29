class AddMonthToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :months, :string
  end
end
