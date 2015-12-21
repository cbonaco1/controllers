class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
    # byebug
  end

  def new
    render text: "Here in new!"
  end

  def create
    byebug
    user = User.new(params[:user].permit(:name, :email))
    user.save!
    render json: user
  end

  def show
    render text: "Here in show!"
  end

  def update
    render text: "Here in update!"
  end

  def edit
    render text: "Here in edit"
  end
end
