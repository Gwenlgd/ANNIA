class LitsController < ApplicationController
  before_action :set_lit, only: [:show, :edit, :update, :destroy]

  def index
    @lits = Lit.all
  end

  def edit
  end

  private

  def voyage_params
    params.require(:voyage).permit(:category, :ville, :place, :rendezvous, :date_depart, :heure_depart, :date_arrivee, :heure_arrivee, :user_id)
  end

  def set_voyage
    @voyage = Voyage.find(params[:id])
  end
end
