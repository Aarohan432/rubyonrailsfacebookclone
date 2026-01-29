class CreateFriends < ActiveRecord::Migration[8.0]
  def change
    create_table :friends do |t|
      t.string :friend_email
      t.integer :friend_id

      t.timestamps
    end
  end
end
