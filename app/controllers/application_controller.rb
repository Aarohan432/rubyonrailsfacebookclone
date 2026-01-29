class ApplicationController < ActionController::Base
  def new
    @post=Post.new
    puts "lllllllllllyyyyyyyyyyyyyyyyyyyyy", @post
  end
  def index
  end
  # before_filter :authenticate_user!
  protected
  def authenticate_user!
      login_url="http://127.0.0.1:3000/users/sign_in"
    if user_signed_in?
      super
    else
      redirect_to login_url, notice: "if you want to add a notice"
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
  # flash[:success] = t(".successfully_created")
  # root "home#index"
  # get "home/index"
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  # protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  # def configure_permitted_parameters
  # devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  #  user_params.permit(:email, :first_name)
  # end
  # end


  protected

  def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :sur_name, :email, :password, :Gender) }

       devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :sur_name, :email, :password, :Gender) }
  end
end
