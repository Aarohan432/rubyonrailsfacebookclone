class LikeController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  # skip_before_action :verify_authenticity_token
  # protect_from_forgery unless: -> { request.format.json? }
  def LikeUnlike
    # @LikeUnlike=LikeUnlike.create(post_id: params[:product_id], user_id: params[:user_id], likeorunlike: params[:like], users_id: params[:user_id], posts_id: params[:product_id])
    @w=LikeUnlike.where("post_id= ? and user_id=? and likeorunlike=? and users_id=? and posts_id=?", params[:product_id], params[:user_id], params[:like], params[:user_id], params[:product_id])
     @w.delete_all
  end
  def Like
    puts "___________00______________"
    # @post=Post.create(post: params[:Poststore])
    puts params[:product_id]
    puts params[:user_id]
    puts params[:like]
    @LikeUnlike=LikeUnlike.create(post_id: params[:product_id], user_id: params[:user_id], likeorunlike: params[:like], users_id: params[:user_id], posts_id: params[:product_id])
  end
  private

  def user_params
  end
end
