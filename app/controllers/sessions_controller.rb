class SessionsController < ApplicationController
  before_action :current_user, only: [:logged_in]

  def create
    @user = User
      .find_by(email: params_sessions[:email])
      .try(:authenticate, params_sessions[:password])

    if @user
      session[:user_id] = @user.id
      render json: {
        status: :created,
        logged_in: true,
        user: @user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end

  private

  def params_sessions
    params.permit(:email, :password)
  end
end
