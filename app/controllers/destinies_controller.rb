class DestiniesController < ApplicationController
  
  def index
    @destinies = Destiny.all

    render json: @destinies
  end
  
  def new
    destiny = Destiny.new
  end

  def create
    destiny = Destiny.create!(
      url: params[:url],
      city: params[:city],
      country: params[:country],
      family: params[:family],
      description: params[:description],
      state: params[:state],
      famdescription: params[:famdescription],
    )
  end
end