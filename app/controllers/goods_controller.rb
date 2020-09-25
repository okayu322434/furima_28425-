class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end
  def new
    @Goods = Good.new
  end
end
