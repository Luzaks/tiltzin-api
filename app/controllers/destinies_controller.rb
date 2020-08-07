class DestiniesController < ApplicationController
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
    )
  end
end