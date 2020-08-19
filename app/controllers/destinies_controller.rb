class DestiniesController < ApplicationController
  def index
    @destinies = Destiny.all

    render json: @destinies
  end

  def create
    destiny = Destiny.create!(params_destinies)
    if destiny
      render json: { status: 201 }
    else
      render json: {
        status: 400,
        errors: 'Something go wrong. Possible duplicated input. Please review your data and try again.'
      }
    end
  end

  private

  def params_destinies
    params.permit(:url, :city, :country, :family, :description, :state, :famdescription)
  end
end
