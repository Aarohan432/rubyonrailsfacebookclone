
module DeviseHelper
  # Retain this method for backwards compatibility, deprecated in favor of modifying the
  # devise/shared/error_messages partial.

  # def devise_error_messages!
  #  flash[:error] = resource.errors.full_messages.first
  # end
  # resource.class         #=> User resource.errors.class  #=> ActiveModel::Error
  # resource.errors.class
  # def devise_error_messages!
  #  "KABOOM!"
  # render "devise/shared/error_messages", resource: resource
  # end
  # def devise_error_messages1!
  #  resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
  # end

  # def devise_error_messages2!
  #  resource.errors.full_messages.map { |msg| content_tag(:p, msg) }.join
  # end
end
