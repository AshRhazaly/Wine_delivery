class WinesController < ApplicationController
  include CanCan::ControllerAdditions
  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search]
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

  def search
    @searched_value = params[:search]
    @wine = Wine.where("name LIKE ? OR description LIKE ? OR year LIKE ? ",
     "%#{@searched_value}%", "%#{@searched_value}%", "%#{@searched_value}%")
  end

  def edit
  end

  def show
  end

  def update

  end

  def destroy
    @wine.destroy
    redirect_to wines_path
  end
private
  def set_wine
    @wine = Wine.find(params[:id])
  end

  def wine_params
    params.require(:wine).permit(:name,:type,:description,:year,:price, :image)
  end
end
