class BusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bus, only: %i[show edit update destroy]

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.create(bus_params.merge(agence_id: current_user.agence.id))
    if @bus.save
      redirect_to root_path, notice: "Bus created successfully"
    else
      redirect_to root_path, alert: "Bus not created"
    end
  end

  def update
    if @bus.update(bus_params)
      redirect_to root_path, notice: "Bus updated successfully"
    else
      redirect_to root_path, alert: "Bus not updated"
    end
  end

  def destroy
    @bus.destroy
    redirect_to root_path, notice: "Bus deleted successfully"
  end

  private

  def set_bus
    @bus = Bus.find(params[:id])
  end

  def bus_params
    params.require(:bus).permit(:name, :model, :boarding, :destination, :no_of_seats, :time)
  end
end
