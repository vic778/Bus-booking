class UsersController < ApplicationController
  before_action :authenticate_user, only: %i[index show edit update destroy]

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def auto_login
    render json: {
      user: current_user
    }
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :active)
  end
end
