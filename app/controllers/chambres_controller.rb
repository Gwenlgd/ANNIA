class ChambresController < ApplicationController
  before_action :set_chambre, only: [:show]
  before_action :set_lit, only: [:new, :create]


  def index
    @chambres = Chambre.all
  end

  def show
    @lits = @rental.lits
    @rental.user = current_user
  end

  private

  def set_chambre
    @chambre = Chambre.find(params[:id])
  end

  def set_lit
    @lit = Lit.find(params[:lit_id])
  end
end
