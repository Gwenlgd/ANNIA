class LitsController < ApplicationController
  before_action :set_lit, only: [:show, :edit, :update, :destroy]

  # /lits
  def index
    @lits = Lit.all
  end

  # /lits/new

  def new
    @lit = Lit.new
  end

  def create
    @lit = Lit.new(lit_params)
    if @lit.save
      redirect_to lits_path, notice: "Item was saved successfully."
    else
      flash[:error] = "Error creating item. Please try again."
      render :new, status: :unprocessable_entity
    end
  end

  # /lits/:id/edit
  def edit
  end

  def update
    if @lit.update(lit_params)
      redirect_to lit_path(@lit)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @lit.destroy
    redirect_to lits_path, status: :see_other
  end

  private

  def lit_params
    params.require(:lit).permit(:nombre_place)
  end

  def set_lit
    @lit = Lit.find(params[:id])
  end
end
