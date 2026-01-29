class CreateLikeUnlikes < ActiveRecord::Migration[8.0]
  def change
    create_table :like_unlikes do |t|
      t.integer :post_id
      t.integer :user_id
      t.integer :likeorunlike
      t.timestamps
    end
  end
end
