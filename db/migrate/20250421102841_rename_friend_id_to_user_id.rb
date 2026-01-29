class RenameFriendIdToUserId < ActiveRecord::Migration[8.0]
  def change
     rename_column :friends, :friend_id, :user_id
  end
end
