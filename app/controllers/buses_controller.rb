class BusesController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_bus, only: %i[show edit update destroy]

  def index
    @buses = ge_bus
  end

  def show; end

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)
    respond_to do |format|
      if @bus.save
        format.html { redirect_to root_path, notice: 'Bus was successfully created.' }
        format.json { render :show, status: :created, location: @bus }
      else
        format.html { render :new }
        format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @bus.update(bus_params)
        format.html { redirect_to @bus, notice: 'Bus was successfully updated.' }
        format.json { render :show, status: :ok, location: @bus }
      else
        format.html { render :edit }
        format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bus.destroy
    respond_to do |format|
      format.html { redirect_to buses_url, notice: 'Bus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def ge_bus
    @user = User.find(current_user.id)
    @agence = Agence.find(@user.agence_id)
    @buses = @agence.buses
  end

  def set_bus
    @bus = Bus.find(params[:id])
  end

  def bus_params
    params.require(:bus).permit(:name, :model, :boarding, :destination, :no_of_seats, :time, :date, :agence_id)
  end
end
