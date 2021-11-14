class InstallmentsController < ApplicationController
  def create
    @space_station = SpaceStation.find(params[:space_station_id])
    @installment = Installment.new(installment_params)
    @installment.space_station = @space_station
    if @installment.save
      redirect_to space_station_path(@space_station)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def installment_params
    params.require(:installment).permit(:component_id)
  end
end
