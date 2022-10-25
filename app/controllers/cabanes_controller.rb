class CabanesController < ApplicationController
  before_action :set_cabane, only: [:show, :edit, :update, :destroy]

  def index
    @cabanes = Cabane.all
  end

  def show
  end

  def new
    @cabane = Cabane.new
  end

  def create
    @cabane = Cabane.new(cabane_params)
    if @cabane.save
      redirect_to cabanes_path, notice: "Item was saved successfully."
    else
      flash[:error] = "Error creating item. Please try again."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def cabane_params
    params.require(:cabane).permit(:name, :chambres)
  end

  def set_cabane
    @cabane = Cabane.find(params[:id])
  end
end
