class LikesController < ApplicationController
  def create
    p "HEREEEERREERERERE"
    p params[:user_id]
    @post = params[:post]
    @comment = @post.likes.create!(user_id: session[:user_id])
    redirect_to '/'
  end

  def destroy
  end
end
