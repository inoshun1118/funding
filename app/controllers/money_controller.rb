class MoneyController < ApplicationController

  def new
    @money = Money.new
  end

  def create
    Money.create(post_params)
  end

end
