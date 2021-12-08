class SpaceStationsController < ApplicationController
  before_action :set_space_station, only: [:show, :edit, :update, :destroy]

  def index
    @space_stations = SpaceStation.all
  end

  def show
    # @attachment_space = AttachmentSpace.new
    @attachment_spaces = @space_station.attachment_spaces.order("id ASC")
    @top_row = @attachment_spaces.where(id: @attachment_spaces.first.id..(@attachment_spaces.last.id - 6))
    @bottom_row = @attachment_spaces.where(id: (@attachment_spaces.last.id - 5)..@attachment_spaces.last.id)
  end

  def new
    @space_station = SpaceStation.new
  end

  def create
    @space_station = SpaceStation.new(space_station_params)
    @space_station.capacity = 1
    @space_station.power = 10
    if @space_station.save
      redirect_to space_station_path(@space_station)
    else
      render new_space_station_path
    end
  end

  def edit
  end

  def update
    @space_station.update(space_station_params)
    # @component = Component.find(params[:attachment_space][:component_id])
    redirect_to space_station_path(@space_station)
  end

  def destroy
    @space_station.destroy
    redirect_to space_stations_path
  end

  private

  def space_station_params
    params.require(:space_station).permit(:name)
  end

  def set_space_station
    @space_station = SpaceStation.find(params[:id])
  end
end
