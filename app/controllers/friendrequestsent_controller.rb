class FriendrequestsentController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  def friendrequestget
    puts("Inside FriendrequestsentController")
    puts(".....................", params[:emails])
    puts("///////////////////", params[:userid])

    puts("yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy", params[:currentuseremail])
    puts("NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN", params[:user_id])
    @friend=Friend.create(friend_email: params[:currentuseremail], user_id: params[:user_id], users_id: params[:userid], req_status: params[:reqstatus])
    # @friend=Friend.new(post_params)
  end
  def friendprofileview
    puts "tttttttttttttttttttt"
    puts params[:Profilename]
    @profiledata=params[:Profilename]
    puts(@profiledata)
  end

  def friendrequestaccept
    puts("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD")
     # @friend=Friend.update(friend_email: params[:currentuseremail], user_id: params[:user_id], users_id: params[:userid], req_status: "accept")
     # @friend=Friend.update(friend_email: params[:currentuseremail], user_id: params[:user_id], users_id: params[:userid], req_status: "accept").where(friend_email: params[:currentuseremail])
     @friend=Friend.where(friend_email: params[:currentuseremail])
     @friend.update(friend_email: params[:currentuseremail], user_id: params[:user_id], users_id: params[:userid], req_status: "accept")
     puts(@friend)
  end
  def friendrequestdelete
    # @friend=Friend.update(friend_email: params[:currentuseremail], user_id: params[:user_id], users_id: params[:userid], req_status: "declined")
    @friend=Friend.where(friend_email: params[:currentuseremail])
    @friend.update(friend_email: params[:currentuseremail], user_id: params[:user_id], users_id: params[:userid], req_status: "delete")
    puts(@friend)
  end
  private
  def post_params
    params.require(:post).permit(:currentuseremail, :user_id, :userid)
  end
end
# :email,userid:id,currentuserid:`<%=current_user.email%>`,user_id:`<%=current_user.id%>
