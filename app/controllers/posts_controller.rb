class PostsController < ApplicationController
  before_action :user_signed_in?, only: %i(:create, :destroy, :show, :index)

  def index
    @posts = Post.all
  end

  def show;end

  def create
    @post = current_user.posts.build(post_params)
      if @post.save
        flash[:success] = " your post is posted"
        redirect_to root_path
      else
        flash[:danger] = " your post isn't pots"
      end
  end

  def destroy
    current_user.posts.find(params[:id]).destroy
    flash[:success] = "Your post is delete"
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:content, :picture)
  end
end
