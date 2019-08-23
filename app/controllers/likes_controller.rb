class LikesController < ApplicationController
  before_action :find_post
  def create
    if already_liked?
      @like = @post.likes.find_by(user_id: current_user.id)
      @like.destroy
    else
      @post.likes.create(user_id: current_user.id)
    end

    if session[:login] == 1
      redirect_to wall_path(session[:user_id])
    else
    redirect_to '/'
    end
  end



  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end
end
