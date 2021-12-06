class AttachmentSpacesController < ApplicationController
  # def create
    # @space_station = SpaceStation.find(params[:space_station_id])
    # @attachment_space = AttachmentSpace.new(attachment_space_params)
    # @attachment_space.space_station = @space_station
    # @component = Component.find(params[:attachment_space][:component_id])
    # if @attachment_space.save
    #   update_station_stats
    #   redirect_to space_station_path(@space_station)
    # else
    #   redirect_back(fallback_location: root_path)
    # end
  # end

  # private

  # def update_station_stats
  #   @space_station.capacity += @component.room
  #   @space_station.power += @component.power_generated
  #   @space_station.save
  # end

  # def attachment_space_params
  #   params.require(:attachment_space).permit(:component_id)
  # end
end
