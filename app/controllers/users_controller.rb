class UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users, except: [:created_at, :updated_at]
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    user = User.create!(user_params)

    if user.valid?
      render json: user
    else
      flash[:errors] = user.errors.full_messages
      render json: flash[:errors]
    end
  end

  def destroy
      user = User.find(params[:id])
      user.destroy!

      render json: {}
  end

  def update
      user = User.find(params[:id])
      user.update(user_params)

      render json: user
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :phone_number, :address, :username, :password, :bio, :avatar)
  end

end
