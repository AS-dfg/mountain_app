class LikesController < ApplicationController

  def create
    @like = current_user.likes.new(micropost_id: params[:micropost_id])
    if @like.save
      flash[:success] = "いいね登録しました"
      redirect_to "/users/#{params[:user]}"
      #redirect_to root_path
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
    if @like.destroy
      flash[:success] = "いいね解除しました"
      redirect_to "/users/#{params[:user]}"
      #redirect_to root_path
    end
  end

end