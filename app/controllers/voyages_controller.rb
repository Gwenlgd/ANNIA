class VoyagesController < ApplicationController
  before_action :set_voyage, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @voyages = Voyage.where("name LIKE ?", "%#{params[:query]}%")
    else
     @voyages = Voyage.all
    end
  end

  def show
    @voyages = Voyage.all
  end

  def new
    @voyage = Voyage.new
  end

  def create
    @voyage = Voyage.new(voyage_params)
    @voyage.user_id = current_user
    if @voyage.save
      redirect_to voyages_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @voyage.update(voyage_params)
      redirect_to voyage_path(@voyage)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @voyage.destroy
    redirect_to voyages_path, status: :see_other
  end

  private

  def voyage_params
    params.require(:voyage).permit(:category, :ville, :rendezvous, :place, :heure_arrivee, :date_arrivee, :heure_depart, :date_depart)
  end

  def set_voyage
    @voyage = Voyage.find(params[:id])
  end
end
