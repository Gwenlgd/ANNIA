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
      redirect_to cabanes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @cabane.update(cabane_params)
      redirect_to cabane_path(@cabane)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @cabane.destroy
    redirect_to cabanes_path, status: :see_other
  end

  private

  def cabane_params
    params.require(:cabane).permit(:name, chambre_id: [])
  end

  def set_cabane
    @cabane = Cabane.find(params[:id])
  end
end
