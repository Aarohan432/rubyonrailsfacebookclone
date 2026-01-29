class FriendrequestshowController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def friendrequestview
    puts "tttttttttttttttttttt"
    puts params[:Profilename]
    @profiledata=Friend.where(id: params[:Profilename])
    puts(@profiledata)
  end
end
