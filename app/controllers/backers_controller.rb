class BackersController < ApplicationController
  def new
    @backer = Backer.new
  end

  def create
    Backer.create(backer_params)
    redirect_to root_path
  end

  private
  def backer_params
    params.require(:backer).permit(:address, :money_value).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
