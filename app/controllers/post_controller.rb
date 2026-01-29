class PostController < ApplicationController
  # has_one_attached :image
  # has_many_attached :pictures
  # has_rich_text :body
  # protect_from_forgery with: :null_session
  # # protect_from_forgery with: :null_session
  protect_from_forgery unless: -> { request.format.json? }
  skip_before_action :verify_authenticity_token
  def post
    puts "inside params controller "
    puts params[:Poststore]
    @post=Post.create(post: params[:Poststore])
  end
  def new
    @post = Post.new
  end

  def create
    Rails.logger.info
    @post = Post.new(params[:post].permit(:title, :text, :user, :screen))

    if @post.save
      redirect_to posts_path
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :text, :user, :screen))
      redirect_to posts_path
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def upload
    uploaded_io = params[:post][:attachment]
    File.open(Rails.root.join("public", "uploads", uploaded_io.original_filename), "w") do |file|
      file.write(uploaded_io.read)
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :user, :screen, :attachment)
  end
end
