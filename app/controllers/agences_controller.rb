class AgencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_agence, only: %i[show edit update destroy]

  def index
    @user = current_user
    @agence = @user.agences.all
  end

  def show; end

  def new
    @agence = Agence.new
  end

  def create
    @agence = Agence.create(agence_params.merge(user: current_user))
    if @agence.save
      redirect_to root_path, notice: "Agence created successfully"
    else
      redirect_to root_path, alert: "Agence not created"
    end
  end

  def edit; end

  def update
    if @agence.update(agence_params)
      redirect_to agences_path, notice: "Agence updated successfully"
    else
      redirect_to root_path, alert: "Agence not updated"
    end
  end

  def destroy
    @agence.destroy
    redirect_to agences_path, notice: "Agence deleted successfully"
  end

  private

  def set_agence
    @agence = Agence.find(params[:id])
  end

  def agence_params
    params.require(:agence).permit(:name, :register_number, :road, :avenue, :contact, :user_id)
  end
end
