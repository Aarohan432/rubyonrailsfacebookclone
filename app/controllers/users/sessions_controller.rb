# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [ :create ]
  after_action :unauthenticated
  after_filter :handle_failed_login, only: :new

  private
  def handle_failed_login
    if failed_login?
      render json: { success: false, errors: [ "Login Credentials Failed" ] }, status: 401
    end
  end

  def failed_login?
    (options = env["warden.options"]) && options[:action] == "unauthenticated"
  end

protected

def unauthenticated
  flash[:alert] = t("devise.failure.#{request.env['warden'].message}") unless request.env["warden"].message.blank?
end

  # GET /resource/sign_in
  def new
   super
   puts("llllllllllllllllllllll")
  end

  # POST /resource/sign_in

  def create
    super
  end




  # puts("_________________________????????????????")
  # puts(params[:email])
  # puts(params[:first_name])
  # puts("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDlllll")
  # puts(params[:sur_name])
  # @User = User.find(params[:id])

  def find
    super
    puts("______________________________________")
  end
  def set_user
    @User = User.find(params[:id])
    puts("puts")
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
end
