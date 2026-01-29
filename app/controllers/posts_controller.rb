class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end

  def create
    Rails.logger.info "==============================="
    @post = Post.new(product_params)
    if @post.save
      # redirect_to @post
      # redirect_to posts_path
      redirect_back_or_to "/home/index"
    else
      render :new, status: :unprocessable_entity
    end
    # format.js { render inline: "location.reload();" }
    # @post = Post.new(params[:post].permit(:title))

    # if @post.save
    # redirect_to posts_path
    # else
    # render "new"
    # end
  end
  private
    def product_params
       # user.profile_image.attach(params[:profile_image])

       params.require(:post).permit(:image, :title)
      # params.expect(post: [ :title ])
    end
end
