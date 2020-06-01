class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @total_money = Backer.where(post_id: @post.id).sum(:money_value)
    @proportion = (@total_money.to_f / Post.where(id: @post.id).sum(:target_value).to_f) * 100
    @supporters = Backer.where(post_id: @post.id).count(:money_value)
  end

  def create
    @post = Post.new(post_params)
    if  @post.save!
      redirect_to "/posts/#{@post.id}/returns/new"
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :image, :target_value)
  end

end
