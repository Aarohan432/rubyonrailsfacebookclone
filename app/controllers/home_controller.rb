class HomeController < ApplicationController
  # before_filter :authenticate_user!
  # before_filter :authenticate_user!
  before_action :authenticate_user!

  def index
    flash[:notice] = "This is a notice message"
    flash[:alert] = "This is an alert message"
    @posts = Post.all
    @post = Post.new
    puts("_________________________")
    puts(params[:email])
    puts(params[:first_name])
    puts("vvvvvvvvvvvvvvvvvvvvvvvvvvv")
    puts(params[:sur_name])
    # puts(currentuser.email)
  end
  def new
    @post = Post.new
    puts "**********************************", @post
  end


  def create
    @post = Post.new(product_params)
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end
end
