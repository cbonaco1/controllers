class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
    # byebug
  end

  # def new
  #   render text: "Here in new!"
  # end

  def create
    #byebug
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    User.update(@user.id, user_params)

    if user.save
      render json: @user
    else
      render(
        json: @user.errors.full_messages, status: :unprocessable_entity
      )
    end

  end

  # def edit
  #   render text: "Here in edit"
  # end

  def destroy
    @user = User.find(params[:id])
    User.destroy(@user.id)
    render json: @user
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end
end
