# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [ :create ]
  # before_action :configure_account_update_params, only: [:update]


  # GET /resource/sign_up
  def new
    super
    puts("_________________________????????????????")
    puts(params[:email])
    puts(params[:first_name])
  end

  # POST /resource
  def create
    super
    build_resource




    # build_resource

    # if resource.save
    #  if resource.active_for_authentication?
    #   set_flash_message :notice, :signed_up if is_navigational_format?
    #    sign_in(resource_name, resource)
    #   respond_with resource, location: redirect_location(resource_name, resource)
    #  else
    #  set_flash_message :notice, :inactive_signed_up, reason: resource.inactive_message.to_s if is_navigational_format?
    #   expire_session_data_after_sign_in!
    #  respond_with resource, location: after_inactive_sign_up_path_for(resource)
    # end
    # else
    #  clean_up_passwords(resource)
    # Solution for displaying Devise errors on the homepage found on:
    # https://stackoverflow.com/questions/4101641/rails-devise-handling-devise-error-messages
    # flash[:notice] = flash[:notice].to_a.concat resource.errors.full_messages
    # redirect_to root_path # HERE IS THE PATH YOU WANT TO CHANGE
    # end





    puts("_________________________????????????????")
    # puts(params[:email])
    # puts(params[:first_name])
    puts("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD")
    # puts(params[:sur_name])
    puts(",,,,,,,,,,,,,,,,,,,", course_params)
    puts("@@@@@@@@@@@@@@@@@@@", require_params[:email])
    @book = User.where(email: require_params[:email])
    @book.update(D_O_B: course_params)
    puts(@book, "<<<<<<<<<<<<<<<<<<<<<<<<")
    puts(@book, "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL")
    # puts("!!!!!!!!!!!!!!!!", course_params[:sur_name])
    # User.update(email: "aarohan@gmail.com").where(email: params[:email])
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.


  # If you have extra params to permit, append them to the sanitizer.


  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  private

  def require_params
    params.require(:user).permit([  [ :email ] ])
  end

  def course_params
    # params.require(:user).permit([ [ :sur_name ], [ :email ], [ :years ], [ :p ], [ :first_name ], [ :months ] ])
    # params.require(:months)
    # params.require(:Date)
    params.require([ [ :years ], [ :Date ], [ :months ] ])
  end
end
