class RegistrationsController < ApplicationController
  def create
    user = User.create!(params_registrations)

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 400 }
    end
  end

  private

  def params_registrations
    params.permit(:username, :email, :password, :password_confirmation)
  end
end
