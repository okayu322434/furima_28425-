class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end
  def new
    @good = Good.new
  end

  def create
    @good = Good.new(goods_params)
    if @good.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def goods_params
    params.require(:good).permit(:image, :name, :comment, :price, :category_id, :status_id, :delivery_id, :area_id, :shippingdate_id).merge(user_id: current_user.id)
  end
end

