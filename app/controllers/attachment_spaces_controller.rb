class AttachmentSpacesController < ApplicationController

  def update
    @attachment_space = AttachmentSpace.find(params[:attachment_space_id])
    @component = Component.find(params[:component])
    @attachment_space.component = @component
    @space_station = @attachment_space.space_station
    if @attachment_space.save
      update_station_stats
      redirect_to space_station_path(@space_station)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def update_station_stats
    @space_station.capacity += @component.room
    @space_station.power += @component.power_generated
    @space_station.save
  end

  def attachment_space_params
    params.require(:attachment_space).permit(:component)
  end
end
