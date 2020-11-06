class OrdersController < ApplicationController
  before_action :good_params, only: [:index, :create]

  before_action :authenticate_user!, only: [:index]

  def index
  end

  def show
  end

  def index
    @order = AddressForm.new
     if @good.order == nil 
      if user_signed_in?
      if user_signed_in? && current_user.id == @good.user_id
      redirect_to root_path
      end
      else
      redirect_to root_path
    end
  end
  end

  def create
    @order = AddressForm.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def good_params
    @good =Good.find(params[:good_id])
  end

  def order_params
    params.permit(:price, :postcode, :prefecture_id, :city, :address, :buildeing, :phone_number, :token, :good_id , :image).merge(user_id: current_user.id)
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @good.price,  # 商品の値段
      card: order_params[:token],    # カードトークン
      currency: 'jpy'                 # 通貨の種類（日本円）
    )
  end

end