class GoodsController < ApplicationController
  before_action :set_good, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new] 

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

  def update
    if @good.update(goods_params)
    redirect_to action: :show
  else
    render :edit
    end
  end

  def destroy
    if user_signed_in? && current_user.id == @good.user_id
    @good.destroy
    redirect_to root_path
    end
  end

  private
  def goods_params
    params.require(:good).permit(:image, :name, :comment, :price, :category_id, :status_id, :delivery_id, :area_id, :shippingdate_id).merge(user_id: current_user.id)
  end

  def set_good
    @good = Good.find(params[:id])
  end


end

