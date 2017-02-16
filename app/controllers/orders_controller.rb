class OrdersController < ApplicationController

  def index
    @wine = Wine.find(params[:wine_id])
    redirect_to new_wine_order_path
  end

  def show
  end

  def new
    @wine = Wine.find(params[:wine_id])
    @order = @wine.orders.build
  end

  def create
    @wine = Wine.find(params[:wine_id])
    @order = @wine.orders.new(order_params)

    if @order.save
      redirect_to wine_path(params[:wine_id])
    else
      render 'new'
    end
  end

  def edit
    @wine = Wine.find(params[:wine_id])
    @order = @wine.find(params[:id])
  end

  def update
    @wine = Wine.find(params[:wine_id])
    @order = @wine.find(params[:id])

    if @order.update
      redirect_to wine_path(@wine)
    else
      render 'edit'
    end
  end

  def destroy
    @wine = Wine.find(params[:wine_id])
    @order = @wine.orders.find(params[:id])
    @order.destroy
    redirect_to wine_path(@wine)
  end

  private

  def order_params
    params.require(:order).permit(:cust_name, :email, :address, :wine_id, :quantity)
  end

end
