class CustordersController < ApplicationController
  def index
    @orders = Wine.find(params[:id]).Custorders.all
  end

  def show
  end

  def new
    @wine = Wine.find(params[:id])
    @order = @wine.custorders.build
  end

  def create
    @wine = Wine.find(params[:wine_id])
    @order = @wine.custorders.new(custorder_params)

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

  def destroy
    @wine = Wine.find(params[:wine_id])
    @order = @wine.custorders.find(params[:id])
    @order.destroy
    redirect_to wine_path(@wine)
  end

  private

  def custorder_params
    params.require(:custorder).permit(:cust_name, :email, :address, :wine_id, :quantity)
  end

end
