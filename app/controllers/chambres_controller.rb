class ChambresController < ApplicationController
  before_action :set_chambre, only: [:show]
  before_action :set_lit, only: [:create]

  def index
    @chambres = Chambre.all
  end

  def show
    @lits = @chambre.lits
    @chambre.user = current_user
  end

  def new
    @chambre = Chambre.new
  end

  def create
    @chambre = Chambre.new(chambre_params)
    # @chambre.lits = Lit.find(params[:id])
    # @lits = Lit.all
    # @lits = @lits_id.nombre_place
    raise
    if @chambre.save
      redirect_to chambres_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_chambre
    @chambre = Chambre.find(params[:id])
  end

  def chambre_params
    params.require(:chambre).permit(:name, :nombre_lits, lits_id: [])
  end

  def set_lit
    @lit = Lit.find(params[:id])
  end
end
