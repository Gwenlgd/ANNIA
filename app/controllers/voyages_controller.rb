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
    # @voyage.user = current_user
  end

  def create
    # @user = current_user.id
    @voyage = Voyage.new(voyage_params)
    # @voyage_user = current_user.id
    if @voyage.save
      redirect_to voyages_path, notice: "Item was saved successfully."
    else
      flash[:error] = "Error creating item. Please try again."
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
    params.require(:voyage).permit(:category, :ville, :place, :rendezvous, :date_depart, :heure_depart, :date_arrivee, :heure_arrivee, :user_id)
  end

  def set_voyage
    @voyage = Voyage.find(params[:id])
  end
end
