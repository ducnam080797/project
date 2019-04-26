class UsersController < ApplicationController
  def index
    @users = User.all
    @frienships = User.all
  end

  def show
    @posts = User.find(params[:id]).posts
    @user = User.find(params[:id])
    @accept_friendship = Friendship.accept_friend("accept").any?
    @request_friendship = Friendship.request_friend("request").any?
  end
end
