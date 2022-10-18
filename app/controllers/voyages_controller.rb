class VoyagesController < ApplicationController
  before_action :set_voyage, only: [:show]

  def index
    @voyages = Voyage.all
  end

  def show
    @voyage.user = current_user
  end

  def new
    @voyage = Voyage.new
  end

  def create
    @voyage = Voyage.new(voyage_params)
    @voyage.user_id = current_user.id
    if @voyage.save
      redirect_to voyages_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def voyage_params
    params.require(:voyage).permit(:category, :ville, :rendezvous, :place, :heure_arrivee, :date_arrivee, :heure_depart, :date_depart)
  end

  def set_voyage
    @voyage = Voyage.find(params[:id])
  end
end
