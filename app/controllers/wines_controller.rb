class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  def index
    @wine = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to wines_path
      flash[:notice] = "You've published your post successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    render 'show'
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
    params.require(:wine).permit(:name,:type,:description,:year,:price)
  end
end
