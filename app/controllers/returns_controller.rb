class ReturnsController < ApplicationController

  def new
    @return = Return.new
  end

  def create
    @return = Return.create(return_params)
    if  @return.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def return_params
    params.require(:return).permit(:return_text, :return_image).merge(post_id: params[:post_id])
  end
end