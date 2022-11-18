class ChambresController < ApplicationController
  before_action :set_chambre, only: [:show, :edit, :update, :destroy]

  def index
    @chambres = Chambre.all
  end

  def show
  end

  def new
    @chambre = Chambre.new
  end

  def create
    @chambre = Chambre.new(chambre_params)
    if @chambre.save
      redirect_to chambres_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @chambre.update(chambre_params)
      redirect_to chambre_path(@chambre)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @chambre.destroy
    redirect_to chambres_path, status: :see_other
  end

  private

  def set_chambre
    @chambre = Chambre.find(params[:id])
  end

  def chambre_params
    params.require(:chambre).permit(:name, :nombre_lits, :lits_id)
  end
end
