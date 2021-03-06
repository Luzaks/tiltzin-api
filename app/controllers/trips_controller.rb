class TripsController < ApplicationController
  before_action :set_trip, only: %i[show destroy]

  def index
    if current_user
      render json: { trips: current_user.trips }
    else
      render json: { error: 'Something went wrong', trips: Trip.all }
    end
  end

  def show
    render json: @trip
  end

  def create
    trip = Trip.create!(params_trip)
    if trip
      render json: { status: 200 }
    else
      render json: { status: 400 }
    end
  end

  def destroy
    if @trip
      @trip.destroy
      render json: { status: 200 }
    else
      render json: {
        status: 401,
        errors: 'Something go wrong. Please try again.'
      }
    end
  end

  private

  def set_trip
    @trip = Trip.find_by!(id: params[:id])
  end

  def params_trip
    params.permit(:destiny_id, :user_id, :date, :destiny_name)
  end
end
