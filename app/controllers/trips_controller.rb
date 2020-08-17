class TripsController < ApplicationController
  before_action :set_trips, only: %i[show destroy]
  before_action :current_user, only: %i[index]

  def index
    if @current_user
      render json: @current_user.trips
    else
      render json: Trip.all
    end
  end

  def show
    render json: @trip
  end

  def create
    trip = Trip.create!(params_trip)
    if trip
      render json: trip
    else
      render json: { status: 400 }
    end
  end

  def destroy
    @trip.destroy
    render json: { status: 200 }
  end

  private

  def set_trip
    @trip = Trip.find_by!(id: params[:id])
  end

  def params_trip
    params.permit(:destiny_id, :user_id, :date)
  end
end
