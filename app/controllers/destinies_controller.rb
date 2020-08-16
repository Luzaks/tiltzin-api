class DestiniesController < ApplicationController
  def index
    @destinies = Destiny.all

    render json: @destinies
  end

  def new
    Destiny.new
  end
end
