class BuysController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @buy = Buy.new(buy_params)
    if @buy.save
      flash[:success] = "Successfully buy"
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
    @post=Post.find(params[:post_id])
    @post.create_notification_by(current_user)
      # respond_to do |format|
      #   format.html {redirect_to request.referrer}
      #   format.js
      # end
  end
  def index
    @buys = current_user.buys.all
  end
  def show
    @buy = Buy.find(params[:id])
  end
  private
  def buy_params
    params.permit(:user_id, :post_id, :price)
  end
end
