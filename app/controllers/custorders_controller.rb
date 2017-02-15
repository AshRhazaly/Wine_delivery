class CustordersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def custorder_params
    params.require(:custorder).permit(:cust_name, :email, :address, :wine_id, :quantity)
  end

end
