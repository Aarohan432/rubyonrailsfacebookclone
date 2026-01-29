class AddRequestStatusToFriends < ActiveRecord::Migration[8.0]
  def change
    add_column :friends, :req_status, :string
  end
end
