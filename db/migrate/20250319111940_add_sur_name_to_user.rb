class AddSurNameToUser < ActiveRecord::Migration[8.0]
    def change
      add_column :users, :sur_name, :string
    end
    def down
      remove_column :users, :sur_name, :string
    end
end
