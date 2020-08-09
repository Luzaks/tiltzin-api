class TripsController < ApplicationController
    before_action :set_trips, only: %i[show destroy]
  
    def index
        trips = Trip.all
    
        render json: trips
    end
  
    def show
      render json: @trip
    end
  
    def create
      trip = Trip.create!(
        destiny_id: params[:destiny_id],
        user_id: params[:user_id],
        date: params[:date]
      )
      if trip
        render json: trip
      else
        render json: { status: 500 }
      end
    end
  
    def destroy
      @trip.destroy
      render json: { status: 200, destroyed_trip: true }    
    end
  
    private
    
    def set_trip
      @trip = Trip.find_by!(id: params[:id])
    end
  end