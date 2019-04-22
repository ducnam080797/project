class StaticPagesController < ApplicationController
  def home 
    @posts = current_user.posts.build if user_signed_in?
  end

  def help; end
end
