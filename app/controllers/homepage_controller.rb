class HomepageController < ApplicationController
  def view
  end

  def new
    @post = Post.new
  end
  def home
    Rails.logger.info "===============================================ok"
  end
end
