class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  def index
    @wine = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.create(params[:id])
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
private
  def set_wine
    @wine = Wine.find(params[:id])
  end

  def wine_params
    params.require(:wine).permit(:name,:type,:description,:year)
  end
end
