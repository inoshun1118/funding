class PostsController < ApplicationController

  def index
    @posts = Post.includes(:images).order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :image)
  end

end
