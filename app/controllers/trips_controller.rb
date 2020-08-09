class TrpsController < ApplicationController
    before_action :set_trips, only: %i[show destroy]
  
    def index
        trips = Destiny.all
    
        render json: trips
    end
  
    def show
      render json: @trip
    end
  
    def create
      @trips = Trip.create!(trip_params)
      json_response(@trips, )
    end
  
    def destroy
      @trip.destroy
      render json: { status: 200, destroyed_trip: true }    
    end
  
    private
  
    def trip_params
      params.permit(:destiny_id, :user_id, :date)
    end
  
    def set_trip
      @trip = Trip.find_by!(id: params[:id])
    end
  end