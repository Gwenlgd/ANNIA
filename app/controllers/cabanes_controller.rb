class CabanesController < ApplicationController
  before_action :set_cabane, only: [:show, :edit, :update, :destroy]

  def index
    @cabanes = Cabane.all
  end

  def show
  end

  private

  def cabane_params
    params.require(:cabane).permit(:nom, :lit_une_place, :lit_deux_place, :chambre)
  end

  def set_cabane
    @cabane = Cabane.find(params[:id])
  end
end
