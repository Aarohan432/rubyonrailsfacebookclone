class AddFriendToUsers < ActiveRecord::Migration[8.0]
  def change
    add_reference :friends, :users, null: false, foreign_key: true
  end
end
