class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @total_money = Backer.where(post_id: @post.id).sum(:money_value).to_i
    @supporters = Backer.where(post_id: @post.id).count(:money_value)
  end

  def create
    @post = Post.new(post_params)
    if  @post.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :image, :target_value)
  end

end
