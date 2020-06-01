class ReturnsController < ApplicationController

  def new
    @return = Return.new
  end
  
  def create
    @return = Return.new
  end
end
