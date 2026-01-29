class CommentController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
  skip_before_action :verify_authenticity_token
  def commentview
    # @comment=Comment.create()
    puts params[:product_id]
    puts params[:user_id]
    puts params[:comment]
     @comment=Comment.create(comment: params[:comment], post_id: params[:post_id], user_id: params[:user_id], users_id: params[:user_id], posts_id: params[:post_id])
  end
end
