class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
    @users = User.all
  end

  def create
    @friendship = current_user.friendships.build(friendship_params)
    if @friendship.save
      @friendship.status_invitation
      flash[:success] = "Friend invitation has been sent"
      redirect_to root_path
    else
      flash[:danger] = "Friend invitation has not been sent"
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    if @friendship.update(status: 2)
      flash[:success] = "Chấp nhận lời mời kết bạn thành công"
      redirect_to root_path
    else
      flash[:danger] = "Lời mời kết bạn không thành công"
    end
  end

  def destroy
    current_user.friendships.find(params[:id]).destroy
    flash[:success] = "lời mời kết bạn đã hủy"
    redirect_to root_path
  end

  private

  def friendship_params
    params.permit(:receiver_id, :sender_id, :sender_name, :receiver_name, :sender_picture)
  end
end