class AddMonthsToUser < ActiveRecord::Migration[8.0]
  def change
    def change
      add_column :users, :months, :string
    end
    def down
      remove_column :users, :months, :string
    end
  end
end
