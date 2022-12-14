class RepasController < ApplicationController
  before_action :set_repa, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    @repas_users = Repa.where(user_id: current_user)
    @other_repas = Repa.where.not(user_id: current_user)
    @repas = Repa.all
  end

  def show
  end

  def new
    @repa = Repa.new
  end

  def create
    @repa = Repa.new(repa_params)
    @repa.user_id = current_user.id
    if @repa.save
      redirect_to repas_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @repa.update(repa_params)
      redirect_to repa_path(@repa)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @repa.destroy
    redirect_to repas_path, status: :see_other
  end

  private

  def repa_params
    params.require(:repa).permit(:items, :allergies, :quantities, :drinks, :user_id)
  end

  def set_repa
    @repa = Repa.find(params[:id])
  end
end
