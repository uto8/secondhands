class PostsController < ApplicationController
  def new
    @post=current_user.posts.new
  end
  def create
    @post=current_user.posts.new(post_params)
    if @post.save
      flash[:success]="Successfully post"
      redirect_to post_path(@post)
    else
      render "new"
      flash[:danger]="Successfully post"
    end
  end
  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    flash[:success]="Successfully destroyed"
    redirect_to posts_path
  end
  def index
    @posts=Post.all

  end
  def show
    @post =Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post=current_user.posts.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "Post Updated"
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = @room.errors.full_messages
      redirect_back(fallback_location: root_path)
    end
  end
  def buy
    # @buy =
  end
  private
  def post_params
    params.require(:post).permit(:title, :description, :price, :item_type, images: [])
  end
end
