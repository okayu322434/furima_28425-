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

  def show
    # @goods = Good.all
    @good = Good.find(params[:id])
  end

  def edit
    @good = Good.find(params[:id])
  end

  def update
    @good = Good.find(params[:id])
    @good.update(goods_params)
    redirect_to action: :show
  end

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to root_path
  end

  private
  def goods_params
    params.require(:good).permit(:image, :name, :comment, :price, :category_id, :status_id, :delivery_id, :area_id, :shippingdate_id).merge(user_id: current_user.id)
  end


end

