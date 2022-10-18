class VoyagesController < ApplicationController
  before_action :set_voyage, only: [:show]

  def index
    @voyages = Voyage.all
  end

  def show
    @voyage = Voyage.new
    @voyage.user = current_user
  end



  private

  def set_voyage
    @voyage = Voyage.find(params[:id])
  end
end
