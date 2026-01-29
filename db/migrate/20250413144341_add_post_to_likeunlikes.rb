class AddPostToLikeunlikes < ActiveRecord::Migration[8.0]
  def change
    add_reference :like_unlikes, :users, foreign_key: true
    add_reference :like_unlikes, :posts, foreign_key: true
  end
end
